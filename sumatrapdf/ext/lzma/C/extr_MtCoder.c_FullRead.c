
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* Read ) (TYPE_1__*,int *,size_t*) ;} ;
typedef int SRes ;
typedef TYPE_1__ ISeqInStream ;
typedef int Byte ;


 int RINOK (int ) ;
 int SZ_OK ;
 int stub1 (TYPE_1__*,int *,size_t*) ;

__attribute__((used)) static SRes FullRead(ISeqInStream *stream, Byte *data, size_t *processedSize)
{
  size_t size = *processedSize;
  *processedSize = 0;
  while (size != 0)
  {
    size_t curSize = size;
    SRes res = stream->Read(stream, data, &curSize);
    *processedSize += curSize;
    data += curSize;
    size -= curSize;
    RINOK(res);
    if (curSize == 0)
      return SZ_OK;
  }
  return SZ_OK;
}
