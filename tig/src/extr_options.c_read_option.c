
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_state {int errors; int lineno; int path; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int ERROR_NO_OPTION_VALUE ;
 int SIZEOF_ARG ;
 int SUCCESS ;
 int argv_from_string (char const**,int*,char*) ;
 int error (char*,char*) ;
 int get_status_message (int) ;
 int set_option (char*,int,char const**) ;
 size_t strcspn (char*,char*) ;
 int warn (char*,int ,int ,int ) ;

__attribute__((used)) static enum status_code
read_option(char *opt, size_t optlen, char *value, size_t valuelen, void *data)
{
 struct config_state *config = data;
 enum status_code status = ERROR_NO_OPTION_VALUE;



 optlen = strcspn(opt, "#");
 if (optlen == 0)
  return SUCCESS;

 if (opt[optlen] == 0) {

  size_t len = strcspn(value, "#");
  const char *argv[SIZEOF_ARG];
  int argc = 0;

  if (len < valuelen) {
   valuelen = len;
   value[valuelen] = 0;
  }

  if (!argv_from_string(argv, &argc, value))
   status = error("Too many option arguments for %s", opt);
  else
   status = set_option(opt, argc, argv);
 }

 if (status != SUCCESS) {
  warn("%s:%zu: %s", config->path, config->lineno,
       get_status_message(status));
  config->errors = 1;
 }


 return SUCCESS;
}
