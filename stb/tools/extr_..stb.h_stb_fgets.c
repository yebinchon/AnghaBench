
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* fgets (char*,int,int *) ;
 scalar_t__ strlen (char*) ;

char * stb_fgets(char *buffer, int buflen, FILE *f)
{
   char *p;
   buffer[0] = 0;
   p = fgets(buffer, buflen, f);
   if (p) {
      int n = (int) (strlen(p)-1);
      if (n >= 0)
         if (p[n] == '\n')
            p[n] = 0;
   }
   return p;
}
