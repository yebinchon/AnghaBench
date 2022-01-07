
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_t ;


 int * create_list () ;
 int free (char*) ;
 int list_add (int *,char*) ;
 char* strdup (char const*) ;
 char* strtok (char*,char const*) ;

list_t *split_string(const char *str, const char *delims) {
 list_t *res = create_list();
 char *copy = strdup(str);

 char *token = strtok(copy, delims);
 while (token) {
  list_add(res, strdup(token));
  token = strtok(((void*)0), delims);
 }
 free(copy);
 return res;
}
