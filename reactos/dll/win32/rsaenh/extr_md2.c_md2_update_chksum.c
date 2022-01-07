
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* chksum; unsigned char* buf; } ;
typedef TYPE_1__ md2_state ;


 int* PI_SUBST ;

__attribute__((used)) static void md2_update_chksum(md2_state *md2)
{
   int j;
   unsigned char L;
   L = md2->chksum[15];
   for (j = 0; j < 16; j++) {




       L = (md2->chksum[j] ^= PI_SUBST[(int)(md2->buf[j] ^ L)] & 255);
   }
}
