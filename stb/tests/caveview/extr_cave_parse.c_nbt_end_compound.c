
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* cur; scalar_t__ nesting; } ;
typedef TYPE_1__ nbt ;


 scalar_t__ TAG_End ;
 int assert (int) ;

__attribute__((used)) static void nbt_end_compound(nbt *n)
{
   assert(*n->cur == TAG_End);
   assert(n->nesting != 0);
   ++n->cur;
   --n->nesting;
}
