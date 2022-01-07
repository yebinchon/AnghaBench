
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct options_entry {TYPE_1__* tableentry; } ;
struct TYPE_2__ {char* separator; } ;


 scalar_t__ UINT_MAX ;
 int free (char*) ;
 int * options_array_item (struct options_entry*,scalar_t__) ;
 scalar_t__ options_array_set (struct options_entry*,scalar_t__,char const*,int ,char**) ;
 char* strsep (char**,char const*) ;
 char* xstrdup (char const*) ;

int
options_array_assign(struct options_entry *o, const char *s, char **cause)
{
 const char *separator;
 char *copy, *next, *string;
 u_int i;

 separator = o->tableentry->separator;
 if (separator == ((void*)0))
  separator = " ,";
 if (*separator == '\0') {
  if (*s == '\0')
   return (0);
  for (i = 0; i < UINT_MAX; i++) {
   if (options_array_item(o, i) == ((void*)0))
    break;
  }
  return (options_array_set(o, i, s, 0, cause));
 }

 if (*s == '\0')
  return (0);
 copy = string = xstrdup(s);
 while ((next = strsep(&string, separator)) != ((void*)0)) {
  if (*next == '\0')
   continue;
  for (i = 0; i < UINT_MAX; i++) {
   if (options_array_item(o, i) == ((void*)0))
    break;
  }
  if (i == UINT_MAX)
   break;
  if (options_array_set(o, i, next, 0, cause) != 0) {
   free(copy);
   return (-1);
  }
 }
 free(copy);
 return (0);
}
