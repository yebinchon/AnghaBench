
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int alloced; } ;
typedef TYPE_1__ stb_idict ;


 scalar_t__ malloc (int) ;
 int stb_idict_init (TYPE_1__*,int) ;
 int stb_is_pow2 (int) ;
 int stb_log2_ceil (int) ;

stb_idict * stb_idict_new_size(int size)
{
   stb_idict *e = (stb_idict *) malloc(sizeof(*e));
   if (e) {
      if (!stb_is_pow2(size))
         size = 1 << stb_log2_ceil(size);
      stb_idict_init(e, size);
      e->alloced = 1;
   }
   return e;
}
