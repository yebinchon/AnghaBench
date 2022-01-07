
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * arena; } ;
typedef TYPE_1__ stb_sdict ;


 int * stb_malloc_global (int) ;
 TYPE_1__* stb_sdict_create () ;

stb_sdict * stb_sdict_new(int use_arena)
{
   stb_sdict *d = stb_sdict_create();
   if (d == ((void*)0)) return ((void*)0);
   d->arena = use_arena ? stb_malloc_global(1) : ((void*)0);
   return d;
}
