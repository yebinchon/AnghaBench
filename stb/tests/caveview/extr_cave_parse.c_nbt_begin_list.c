
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_3__ {unsigned char* cur; int nesting; } ;
typedef TYPE_1__ nbt ;


 int assert (int) ;
 scalar_t__ nbt_parse_uint32 (unsigned char*) ;

__attribute__((used)) static int nbt_begin_list(nbt *n, unsigned char type)
{
   uint32 len;
   unsigned char *ptr;

   ptr = n->cur + 3 + (n->cur[1]*256 + n->cur[2]);
   if (ptr[0] != type)
      return -1;
   n->cur = ptr;
   len = nbt_parse_uint32(n->cur+1);
   assert(n->cur[0] == type);

   ++n->nesting;
   n->cur += 5;
   return (int) len;
}
