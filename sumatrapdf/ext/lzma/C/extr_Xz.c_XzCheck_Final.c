
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_3__ {int mode; int sha; int crc64; int crc; } ;
typedef TYPE_1__ CXzCheck ;
typedef int Byte ;


 int CRC64_GET_DIGEST (int ) ;
 int CRC_GET_DIGEST (int ) ;
 int SetUi32 (int *,int ) ;
 int Sha256_Final (int *,int *) ;




int XzCheck_Final(CXzCheck *p, Byte *digest)
{
  switch (p->mode)
  {
    case 130:
      SetUi32(digest, CRC_GET_DIGEST(p->crc));
      break;
    case 129:
    {
      int i;
      UInt64 v = CRC64_GET_DIGEST(p->crc64);
      for (i = 0; i < 8; i++, v >>= 8)
        digest[i] = (Byte)(v & 0xFF);
      break;
    }
    case 128:
      Sha256_Final(&p->sha, digest);
      break;
    default:
      return 0;
  }
  return 1;
}
