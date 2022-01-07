
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf2 ;
typedef int buf1 ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fread (char*,int,int,int *) ;
 int memcmp (char*,char*,int ) ;
 int stb_min (int,int) ;

__attribute__((used)) static int stb_fcmp_core(FILE *f, FILE *g)
{
   char buf1[1024],buf2[1024];
   int n1,n2, res=0;

   while (1) {
      n1 = (int) fread(buf1, 1, sizeof(buf1), f);
      n2 = (int) fread(buf2, 1, sizeof(buf2), g);
      res = memcmp(buf1,buf2,stb_min(n1,n2));
      if (res)
         break;
      if (n1 != n2) {
         res = n1 < n2 ? -1 : 1;
         break;
      }
      if (n1 == 0)
         break;
   }

   fclose(f);
   fclose(g);
   return res;
}
