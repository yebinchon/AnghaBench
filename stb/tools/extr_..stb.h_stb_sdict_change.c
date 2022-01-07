
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_sdict ;


 void* stb_sdict_get (int *,char*) ;
 int stb_sdict_set (int *,char*,void*) ;

void * stb_sdict_change(stb_sdict *d, char *str, void *p)
{
   void *q = stb_sdict_get(d, str);
   stb_sdict_set(d, str, p);
   return q;
}
