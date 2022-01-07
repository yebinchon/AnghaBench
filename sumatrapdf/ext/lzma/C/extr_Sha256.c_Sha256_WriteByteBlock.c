
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_3__ {int state; scalar_t__* buffer; } ;
typedef TYPE_1__ CSha256 ;


 int Sha256_Transform (int ,int*) ;

__attribute__((used)) static void Sha256_WriteByteBlock(CSha256 *p)
{
  UInt32 data32[16];
  unsigned i;
  for (i = 0; i < 16; i++)
    data32[i] =
      ((UInt32)(p->buffer[i * 4 ]) << 24) +
      ((UInt32)(p->buffer[i * 4 + 1]) << 16) +
      ((UInt32)(p->buffer[i * 4 + 2]) << 8) +
      ((UInt32)(p->buffer[i * 4 + 3]));
  Sha256_Transform(p->state, data32);
}
