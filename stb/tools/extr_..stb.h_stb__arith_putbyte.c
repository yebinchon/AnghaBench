
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending_ffs; int buffered_u8; int output; } ;
typedef TYPE_1__ stb_arith ;


 int stb_putc (int ,int) ;

__attribute__((used)) static void stb__arith_putbyte(stb_arith *a, int byte)
{
   if (a->pending_ffs) {
      if (a->pending_ffs == -1) {
         if (byte == 0xff)
            stb_putc(a->output, byte);
         else {
            a->buffered_u8 = byte;
            a->pending_ffs = 0;
         }
      } else if (byte == 0xff) {
         ++a->pending_ffs;
      } else {
         int i;
         stb_putc(a->output, a->buffered_u8);
         for (i=0; i < a->pending_ffs; ++i)
            stb_putc(a->output, 0xff);
      }
   } else if (byte == 0xff) {
      ++a->pending_ffs;
   } else {

      stb_putc(a->output, a->buffered_u8);
      a->buffered_u8 = byte;
   }
}
