
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void stb_glprog_error(char *error, int error_buflen, char *str1, char *str2, char *str3)
{
   int n = strlen(str1);
   strncpy(error, str1, error_buflen);
   if (n < error_buflen && str2) {
      strncpy(error+n, str2, error_buflen - n);
      n += strlen(str2);
      if (n < error_buflen && str3) {
         strncpy(error+n, str3, error_buflen - n);
      }
   }
   error[error_buflen-1] = 0;
}
