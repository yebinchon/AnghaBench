
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int sha; int crc64; int crc; } ;
typedef TYPE_1__ CXzCheck ;
typedef int Byte ;


 int Crc64Update (int ,void const*,size_t) ;
 int CrcUpdate (int ,void const*,size_t) ;
 int Sha256_Update (int *,int const*,size_t) ;




void XzCheck_Update(CXzCheck *p, const void *data, size_t size)
{
  switch (p->mode)
  {
    case 130: p->crc = CrcUpdate(p->crc, data, size); break;
    case 129: p->crc64 = Crc64Update(p->crc64, data, size); break;
    case 128: Sha256_Update(&p->sha, (const Byte *)data, size); break;
  }
}
