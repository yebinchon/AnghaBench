
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int code_bits; int nomore; unsigned char marker; int code_buffer; int s; } ;
typedef TYPE_1__ jpeg ;


 int get8 (int ) ;

__attribute__((used)) static void grow_buffer_unsafe(jpeg *j)
{
   do {
      int b = j->nomore ? 0 : get8(j->s);
      if (b == 0xff) {
         int c = get8(j->s);
         if (c != 0) {
            j->marker = (unsigned char) c;
            j->nomore = 1;
            return;
         }
      }
      j->code_buffer |= b << (24 - j->code_bits);
      j->code_bits += 8;
   } while (j->code_bits <= 24);
}
