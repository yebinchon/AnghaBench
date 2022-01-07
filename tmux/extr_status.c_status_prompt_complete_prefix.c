
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 size_t strlen (char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
status_prompt_complete_prefix(char **list, u_int size)
{
 char *out;
 u_int i;
 size_t j;

 out = xstrdup(list[0]);
 for (i = 1; i < size; i++) {
  j = strlen(list[i]);
  if (j > strlen(out))
   j = strlen(out);
  for (; j > 0; j--) {
   if (out[j - 1] != list[i][j - 1])
    out[j - 1] = '\0';
  }
 }
 return (out);
}
