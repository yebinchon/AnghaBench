
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;


 int error (char*,char const*) ;
 int option_bind_command (int,char const**) ;
 int option_color_command (int,char const**) ;
 int option_set_command (int,char const**) ;
 int option_source_command (int,char const**) ;
 int strcmp (char const*,char*) ;

enum status_code
set_option(const char *opt, int argc, const char *argv[])
{
 if (!strcmp(opt, "color"))
  return option_color_command(argc, argv);

 if (!strcmp(opt, "set"))
  return option_set_command(argc, argv);

 if (!strcmp(opt, "bind"))
  return option_bind_command(argc, argv);

 if (!strcmp(opt, "source"))
  return option_source_command(argc, argv);

 return error("Unknown option command: %s", opt);
}
