
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_sdict ;


 int * stb_sdict_create () ;

stb_sdict * stb_sdict_new(void)
{
   stb_sdict *d = stb_sdict_create();
   if (d == ((void*)0)) return ((void*)0);
   return d;
}
