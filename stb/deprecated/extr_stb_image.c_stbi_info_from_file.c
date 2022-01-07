
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;
typedef int FILE ;


 int SEEK_SET ;
 int fseek (int *,long,int ) ;
 long ftell (int *) ;
 int start_file (int *,int *) ;
 int stbi_info_main (int *,int*,int*,int*) ;

int stbi_info_from_file(FILE *f, int *x, int *y, int *comp)
{
   int r;
   stbi s;
   long pos = ftell(f);
   start_file(&s, f);
   r = stbi_info_main(&s,x,y,comp);
   fseek(f,pos,SEEK_SET);
   return r;
}
