# Terraform files

- Terraform file types

  - file_name`.tf`
  - file_name`.tf.json`
  - file_name`.tfvars`

- Terraform files info

  - Terraform will first load all files, then in alphabetical (a-z) order it will start executing "files" and execute "blocks" in alphabetical (a-z) order according to their "labels" in that file.

# Blocks

- Block Basic Structure

  ```
  block "label" {
    identifier = expression
  }

  // based on block-type label can be multiple
  block "label" "label_2" {
    identifier = expression
  }
  ```

  ## Block Types

  - Output
  - Variable [Arguments](https://developer.hashicorp.com/terraform/language/values/variables#arguments)

    ### Output

    - Basic Usage
      ```tf
      output "label" {
          value = "Out Put Value"
      }
      ```

    ### Variable

    - Basic variable

      ```tf
      variable "x" {}

      output "print_x" {
        value = "value of x is ${var.x}"
      }
      ```

    - ENV variable

      Add `TF_VAR_` prefix in env variables and terraform will automatically use them.

      ```tf
      variable "username" {} // ENV => TF_VAR_username=test

      output "print_username" {
        value = "value of x is ${var.username}"
      }
      ```

    - optional args

      - terraform only ask for user input if variable value is not given

      ```tf
      variable "x" {
        default="value"
        type = number | string
      }
      ```

# Commands

- Terraform Plan `terraform plan`
- Terraform Providers `terraform providers`
- Terraform init `terraform init`
- Terraform apply `terraform apply`
- Terraform Destroy `terraform destroy`
- Terraform Validate `terraform validate`
- Terraform Validate `terraform validate`
- Terraform Validate `terraform refresh`
- Terraform Validate `terraform show`

  ## Terraform Plan

  - Basic

    ```
    terraform plan
    ```

  - passing variables

    ```
    terraform plan --var "key=value"
    ```

  - use custom tfvar files

    ```
    terraform plan -var-file=file_name.tfvars
    ```

  ## Terraform Providers

  - list providers

    ```bash
    terraform providers
    ```

  ## Terraform Init

  - will install all providers which are required.

    ```bash
    terraform init
    ```

  ## Terraform Apply

  - execute the script

    ```bash
      terraform apply
    ```

  - execute script, bypass confirmation

    ```bash
    terraform apply --auto-approve
    ```

  ## Terraform Destroy

  - delete all the resources

    ```bash
    terraform destroy
    ```

  - delete the specified resource

    ```bash
    terraform destroy --target
    ```

  ## Terraform Validate

  - check files for errors

    ```bash
    terraform validate
    ```

# Terraform in Json .tf.json

- .tf example

  ```tf
  output "label_hello1" {
      value = "Out Put Value"
  }
  ```

- .tf.json example
  ```json
  {
    "output": {
      "label_hello1": {
        "value": "Out Put Value"
      }
    }
  }
  ```
