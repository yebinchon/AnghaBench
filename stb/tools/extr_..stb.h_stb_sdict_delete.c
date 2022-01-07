
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ arena; } ;
typedef TYPE_1__ stb_sdict ;


 int stb_free (scalar_t__) ;
 int stb_sdict_destroy (TYPE_1__*) ;

void stb_sdict_delete(stb_sdict *d)
{
   if (d->arena)
      stb_free(d->arena);
   stb_sdict_destroy(d);
}
