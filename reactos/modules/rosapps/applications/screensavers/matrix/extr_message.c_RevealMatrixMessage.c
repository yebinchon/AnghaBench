
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int random_reg1; int ** message; } ;
typedef TYPE_1__ MATRIX_MESSAGE ;


 int GLYPH_REDRAW ;
 int crc_msgrand (int) ;

void RevealMatrixMessage(MATRIX_MESSAGE *msg, int amount)
{
 while(amount--)
 {
  int pos;

  msg->random_reg1 = crc_msgrand(msg->random_reg1);
  pos = msg->random_reg1 & 0xffff;

  msg->message[pos / 256][pos % 256] |= GLYPH_REDRAW;
 }
}
