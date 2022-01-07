
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option_info {int value; int type; scalar_t__ seen; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int SUCCESS ;
 int error (char*,...) ;
 int parse_args (int ,char const**) ;
 int parse_option (struct option_info*,char*,char const*) ;
 int parse_ref_formats (int ,char const**) ;
 int parse_view_settings (int ,char const*,char const**) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static enum status_code
option_update(struct option_info *option, int argc, const char *argv[])
{
 enum status_code code;

 if (option->seen)
  return SUCCESS;

 if (!strcmp(option->type, "const char **"))
  return parse_args(option->value, argv + 2);

 if (argc < 3)
  return error("Invalid set command: set option = value");

 if (!strcmp(option->type, "view_settings"))
  return parse_view_settings(option->value, argv[0], argv + 2);

 if (!strcmp(option->type, "struct ref_format **"))
  return parse_ref_formats(option->value, argv + 2);

 code = parse_option(option, "", argv[2]);
 if (code == SUCCESS && argc != 3)
  return error("Option %s only takes one value", argv[0]);

 return code;
}
