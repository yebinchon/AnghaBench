
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UChar ;
struct TYPE_3__ {int buffLive; int buffer; int handle; } ;
typedef scalar_t__ Int32 ;
typedef TYPE_1__ BitStream ;


 scalar_t__ EOF ;
 int bytesOut ;
 scalar_t__ putc (int ,int ) ;
 int writeError () ;

__attribute__((used)) static void bsPutBit ( BitStream* bs, Int32 bit )
{
   if (bs->buffLive == 8) {
      Int32 retVal = putc ( (UChar) bs->buffer, bs->handle );
      if (retVal == EOF) writeError();
      bytesOut++;
      bs->buffLive = 1;
      bs->buffer = bit & 0x1;
   } else {
      bs->buffer = ( (bs->buffer << 1) | (bit & 0x1) );
      bs->buffLive++;
   };
}
