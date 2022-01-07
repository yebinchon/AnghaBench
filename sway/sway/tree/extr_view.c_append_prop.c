
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pango_markup; } ;


 TYPE_1__* config ;
 char* escape_pango_markup (char const*) ;
 int free (char*) ;
 int lenient_strcat (char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t append_prop(char *buffer, const char *value) {
 if (!value) {
  return 0;
 }


 if (config->pango_markup) {
  char *escaped_value = escape_pango_markup(value);
  lenient_strcat(buffer, escaped_value);
  size_t len = strlen(escaped_value);
  free(escaped_value);
  return len;
 } else {
  lenient_strcat(buffer, value);
  return strlen(value);
 }
}
