
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inbufBitCount; scalar_t__ inbufPos; scalar_t__ inbufCount; int* inbuf; int inbufBits; int jmpbuf; int in_fd; } ;
typedef TYPE_1__ bunzip_data ;


 int IOBUF_SIZE ;
 int RETVAL_UNEXPECTED_INPUT_EOF ;
 int longjmp (int ,int ) ;
 scalar_t__ safe_read (int ,int*,int ) ;

__attribute__((used)) static unsigned get_bits(bunzip_data *bd, int bits_wanted)
{
 unsigned bits = 0;

 int bit_count = bd->inbufBitCount;



 while (bit_count < bits_wanted) {


  if (bd->inbufPos == bd->inbufCount) {

   bd->inbufCount = safe_read(bd->in_fd, bd->inbuf, IOBUF_SIZE);
   if (bd->inbufCount <= 0)
    longjmp(bd->jmpbuf, RETVAL_UNEXPECTED_INPUT_EOF);
   bd->inbufPos = 0;
  }


  if (bit_count >= 24) {
   bits = bd->inbufBits & ((1 << bit_count) - 1);
   bits_wanted -= bit_count;
   bits <<= bits_wanted;
   bit_count = 0;
  }


  bd->inbufBits = (bd->inbufBits << 8) | bd->inbuf[bd->inbufPos++];
  bit_count += 8;
 }


 bit_count -= bits_wanted;
 bd->inbufBitCount = bit_count;
 bits |= (bd->inbufBits >> bit_count) & ((1 << bits_wanted) - 1);

 return bits;
}
