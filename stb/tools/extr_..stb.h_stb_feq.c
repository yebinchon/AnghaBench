
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * stb__fopen (char*,char*) ;
 int stb_fcmp_core (int *,int *) ;
 scalar_t__ stb_filelen (int *) ;

int stb_feq(char *s1, char *s2)
{
   FILE *f = stb__fopen(s1, "rb");
   FILE *g = stb__fopen(s2, "rb");

   if (f == ((void*)0) || g == ((void*)0)) {
      if (f) fclose(f);
      if (g) fclose(g);
      return f == g;
   }


   if (stb_filelen(f) != stb_filelen(g)) {
      fclose(f);
      fclose(g);
      return 0;
   }

   return !stb_fcmp_core(f,g);
}
