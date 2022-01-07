
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* cur; } ;
typedef TYPE_1__ nbt ;


 unsigned char TAG_End ;
 int nbt_skip_raw (TYPE_1__*,unsigned char) ;

__attribute__((used)) static void nbt_skip(nbt *n)
{
   unsigned char type = *n->cur++;
   if (type == TAG_End)
      return;

   n->cur += (n->cur[0]*256 + n->cur[1]) + 2;
   nbt_skip_raw(n, type);
}
