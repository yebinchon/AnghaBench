
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__add_alloc (void*,size_t,char*,int) ;

void stb_wrapper_malloc(void *p, size_t sz, char *file, int line)
{
   if (!p) return;
   stb__add_alloc(p,sz,file,line);
}
