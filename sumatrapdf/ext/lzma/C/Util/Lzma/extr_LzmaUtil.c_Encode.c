
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_5__ {size_t (* Write ) (TYPE_1__*,scalar_t__*,size_t) ;} ;
typedef scalar_t__ SRes ;
typedef TYPE_1__ ISeqOutStream ;
typedef int ISeqInStream ;
typedef int CLzmaEncProps ;
typedef scalar_t__ CLzmaEncHandle ;
typedef scalar_t__ Byte ;


 int LZMA_PROPS_SIZE ;
 int LzmaEncProps_Init (int *) ;
 scalar_t__ LzmaEnc_Create (int *) ;
 int LzmaEnc_Destroy (scalar_t__,int *,int *) ;
 scalar_t__ LzmaEnc_Encode (scalar_t__,TYPE_1__*,int *,int *,int *,int *) ;
 scalar_t__ LzmaEnc_SetProps (scalar_t__,int *) ;
 scalar_t__ LzmaEnc_WriteProperties (scalar_t__,scalar_t__*,size_t*) ;
 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_ERROR_WRITE ;
 scalar_t__ SZ_OK ;
 int g_Alloc ;
 size_t stub1 (TYPE_1__*,scalar_t__*,size_t) ;

__attribute__((used)) static SRes Encode(ISeqOutStream *outStream, ISeqInStream *inStream, UInt64 fileSize, char *rs)
{
  CLzmaEncHandle enc;
  SRes res;
  CLzmaEncProps props;

  rs = rs;

  enc = LzmaEnc_Create(&g_Alloc);
  if (enc == 0)
    return SZ_ERROR_MEM;

  LzmaEncProps_Init(&props);
  res = LzmaEnc_SetProps(enc, &props);

  if (res == SZ_OK)
  {
    Byte header[LZMA_PROPS_SIZE + 8];
    size_t headerSize = LZMA_PROPS_SIZE;
    int i;

    res = LzmaEnc_WriteProperties(enc, header, &headerSize);
    for (i = 0; i < 8; i++)
      header[headerSize++] = (Byte)(fileSize >> (8 * i));
    if (outStream->Write(outStream, header, headerSize) != headerSize)
      res = SZ_ERROR_WRITE;
    else
    {
      if (res == SZ_OK)
        res = LzmaEnc_Encode(enc, outStream, inStream, ((void*)0), &g_Alloc, &g_Alloc);
    }
  }
  LzmaEnc_Destroy(enc, &g_Alloc, &g_Alloc);
  return res;
}
