
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
typedef TYPE_1__ stb__slot ;



__attribute__((used)) static int stb__slot_compare(const void *p, const void *q)
{
   stb__slot *a = (stb__slot *) p;
   stb__slot *b = (stb__slot *) q;
   return a->count > b->count ? -1 : a->count < b->count;
}
