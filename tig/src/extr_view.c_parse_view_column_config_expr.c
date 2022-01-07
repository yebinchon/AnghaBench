
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;


 int SUCCESS ;
 size_t strcspn (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static enum status_code
parse_view_column_config_expr(char **pos, const char **name, const char **value, bool first)
{
 size_t len = strcspn(*pos, ",");
 size_t optlen;

 if (strlen(*pos) > len)
  (*pos)[len] = 0;
 optlen = strcspn(*pos, ":=");

 if (first) {
  *name = "display";

  if (optlen == len) {
   *value = len ? *pos : "yes";
   *pos += len + 1;
   return SUCCESS;
  }


  *value = "yes";
  return SUCCESS;
 }

 *name = *pos;
 if (optlen == len)
  *value = "yes";
 else
  *value = *pos + optlen + 1;
 (*pos)[optlen] = 0;
 *pos += len + 1;

 return SUCCESS;
}
