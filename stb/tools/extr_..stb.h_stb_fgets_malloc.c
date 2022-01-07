
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quick_buffer ;
typedef int FILE ;


 int feof (int *) ;
 int fgets (char*,int,int *) ;
 scalar_t__ realloc (char*,size_t) ;
 char* stb_p_strdup (char*) ;
 size_t strlen (char*) ;

char * stb_fgets_malloc(FILE *f)
{

   char quick_buffer[800];
   quick_buffer[sizeof(quick_buffer)-2] = 0;
   if (!fgets(quick_buffer, sizeof(quick_buffer), f))
      return ((void*)0);

   if (quick_buffer[sizeof(quick_buffer)-2] == 0) {
      size_t n = strlen(quick_buffer);
      if (n > 0 && quick_buffer[n-1] == '\n')
         quick_buffer[n-1] = 0;
      return stb_p_strdup(quick_buffer);
   } else {
      char *p;
      char *a = stb_p_strdup(quick_buffer);
      size_t len = sizeof(quick_buffer)-1;

      while (!feof(f)) {
         if (a[len-1] == '\n') break;
         a = (char *) realloc(a, len*2);
         p = &a[len];
         p[len-2] = 0;
         if (!fgets(p, (int) len, f))
            break;
         if (p[len-2] == 0) {
            len += strlen(p);
            break;
         }
         len = len + (len-1);
      }
      if (a[len-1] == '\n')
         a[len-1] = 0;
      return a;
   }
}
