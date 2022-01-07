
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UInt64 ;
typedef int UInt32 ;
struct TYPE_5__ {int count; int* buffer; int* state; } ;
typedef TYPE_1__ CSha256 ;
typedef void* Byte ;


 int Sha256_Init (TYPE_1__*) ;
 int Sha256_WriteByteBlock (TYPE_1__*) ;

void Sha256_Final(CSha256 *p, Byte *digest)
{
  UInt64 lenInBits = (p->count << 3);
  UInt32 curBufferPos = (UInt32)p->count & 0x3F;
  unsigned i;
  p->buffer[curBufferPos++] = 0x80;
  while (curBufferPos != (64 - 8))
  {
    curBufferPos &= 0x3F;
    if (curBufferPos == 0)
      Sha256_WriteByteBlock(p);
    p->buffer[curBufferPos++] = 0;
  }
  for (i = 0; i < 8; i++)
  {
    p->buffer[curBufferPos++] = (Byte)(lenInBits >> 56);
    lenInBits <<= 8;
  }
  Sha256_WriteByteBlock(p);

  for (i = 0; i < 8; i++)
  {
    *digest++ = (Byte)(p->state[i] >> 24);
    *digest++ = (Byte)(p->state[i] >> 16);
    *digest++ = (Byte)(p->state[i] >> 8);
    *digest++ = (Byte)(p->state[i]);
  }
  Sha256_Init(p);
}
