
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fread (char*,int,int,int *) ;
 scalar_t__ malloc (int) ;
 int stb_fget_varlenu (int *) ;
 char* stb_malloc_string (void*,int) ;

char *stb_fget_string(FILE *f, void *p)
{
   char *s;
   int len = stb_fget_varlenu(f);
   if (len > 4096) return ((void*)0);
   s = p ? stb_malloc_string(p, len+1) : (char *) malloc(len+1);
   fread(s, 1, len, f);
   s[len] = 0;
   return s;
}
