
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int sprintf (char*,char*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int gen_tmp_file(char *buf, int len)
{
 int i;
 char *name = strrchr(buf, '/');

 if (name == ((void*)0))
  name = strrchr(buf, '\\');

 if (name != ((void*)0))
  name++;
 else
  name = buf;

 for (i = 0; i < 10000; i++)
 {
  FILE *f;
  sprintf(name, "tmp%04d", i);
  f = fopen(buf, "r");
  if (f == ((void*)0))
   return 1;
  fclose(f);
 }

 return 0;
}
