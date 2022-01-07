
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* cur; scalar_t__ buffer_end; } ;
typedef TYPE_1__ nbt ;






 int TAG_End ;







 int assert (int) ;
 int nbt_parse_uint32 (int*) ;
 int nbt_skip (TYPE_1__*) ;

__attribute__((used)) static void nbt_skip_raw(nbt *n, unsigned char type)
{
   switch (type) {
      case 138 : n->cur += 1; break;
      case 129 : n->cur += 2; break;
      case 133 : n->cur += 4; break;
      case 130 : n->cur += 8; break;
      case 134 : n->cur += 4; break;
      case 135: n->cur += 8; break;
      case 137: n->cur += 4 + 1*nbt_parse_uint32(n->cur); break;
      case 132 : n->cur += 4 + 4*nbt_parse_uint32(n->cur); break;
      case 128 : n->cur += 2 + (n->cur[0]*256 + n->cur[1]); break;
      case 131 : {
         unsigned char list_type = *n->cur++;
         unsigned int list_len = nbt_parse_uint32(n->cur);
         unsigned int i;
         n->cur += 4;
         for (i=0; i < list_len; ++i)
            nbt_skip_raw(n, list_type);
         break;
      }
      case 136 : {
         while (*n->cur != TAG_End)
            nbt_skip(n);
         nbt_skip(n);
         break;
      }
   }
   assert(n->cur <= n->buffer_end);
}
