
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* table; } ;
typedef TYPE_2__ stb_sdict ;
struct TYPE_4__ {void* v; } ;



void* stb_sdict_internal_value(stb_sdict *a, int n)
{
   return a->table[n].v;
}
