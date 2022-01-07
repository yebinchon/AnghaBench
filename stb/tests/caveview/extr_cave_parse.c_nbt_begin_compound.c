
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* cur; int nesting; } ;
typedef TYPE_1__ nbt ;


 scalar_t__ TAG_Compound ;
 int assert (int) ;

__attribute__((used)) static void nbt_begin_compound(nbt *n)
{
   assert(*n->cur == TAG_Compound);

   n->cur += 3 + (n->cur[1]*256 + n->cur[2]);
   ++n->nesting;
}
