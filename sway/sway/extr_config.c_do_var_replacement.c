
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_variable {char* name; char* value; } ;
struct TYPE_4__ {TYPE_1__* symbols; } ;
struct TYPE_3__ {int length; struct sway_variable** items; } ;


 int SWAY_ERROR ;
 TYPE_2__* config ;
 int free (char*) ;
 char* malloc (int) ;
 int memmove (char*,char*,size_t) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;
 int sway_log (int ,char*) ;

char *do_var_replacement(char *str) {
 int i;
 char *find = str;
 while ((find = strchr(find, '$'))) {

  if (find > str && find[-1] == '\\') {
   if (find == str + 1 || !(find > str + 1 && find[-2] == '\\')) {
    ++find;
    continue;
   }
  }

  if (find[1] == '$') {
   size_t length = strlen(find + 1);
   memmove(find, find + 1, length);
   find[length] = '\0';
   ++find;
   continue;
  }

  for (i = 0; i < config->symbols->length; ++i) {
   struct sway_variable *var = config->symbols->items[i];
   int vnlen = strlen(var->name);
   if (strncmp(find, var->name, vnlen) == 0) {
    int vvlen = strlen(var->value);
    char *newstr = malloc(strlen(str) - vnlen + vvlen + 1);
    if (!newstr) {
     sway_log(SWAY_ERROR,
      "Unable to allocate replacement "
      "during variable expansion");
     break;
    }
    char *newptr = newstr;
    int offset = find - str;
    strncpy(newptr, str, offset);
    newptr += offset;
    strncpy(newptr, var->value, vvlen);
    newptr += vvlen;
    strcpy(newptr, find + vnlen);
    free(str);
    str = newstr;
    find = str + offset + vvlen;
    break;
   }
  }
  if (i == config->symbols->length) {
   ++find;
  }
 }
 return str;
}
