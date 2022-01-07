
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fwrite (char*,int,size_t,int *) ;
 int stb_fput_varlenu (int *,unsigned int) ;
 size_t strlen (char*) ;

void stb_fput_string(FILE *f, char *s)
{
   size_t len = strlen(s);
   stb_fput_varlenu(f, (unsigned int) len);
   fwrite(s, 1, len, f);
}
