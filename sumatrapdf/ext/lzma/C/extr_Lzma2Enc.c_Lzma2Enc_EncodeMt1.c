
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t UInt64 ;
struct TYPE_13__ {int * outBuf; int allocBig; int alloc; int props; } ;
struct TYPE_12__ {int enc; int srcPos; } ;
struct TYPE_11__ {int (* Write ) (TYPE_1__*,int *,int) ;} ;
typedef scalar_t__ SRes ;
typedef TYPE_1__ ISeqOutStream ;
typedef int ISeqInStream ;
typedef int ICompressProgress ;
typedef TYPE_2__ CLzma2EncInt ;
typedef TYPE_3__ CLzma2Enc ;
typedef int Byte ;


 scalar_t__ IAlloc_Alloc (int ,size_t) ;
 size_t LZMA2_CHUNK_SIZE_COMPRESSED_MAX ;
 int LZMA2_KEEP_WINDOW_SIZE ;
 scalar_t__ Lzma2EncInt_EncodeSubblock (TYPE_2__*,int *,size_t*,TYPE_1__*) ;
 int Lzma2EncInt_Init (TYPE_2__*,int *) ;
 int LzmaEnc_Finish (int ) ;
 int LzmaEnc_PrepareForLzma2 (int ,int *,int ,int ,int ) ;
 scalar_t__ Progress (int *,int ,size_t) ;
 int RINOK (int ) ;
 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_ERROR_WRITE ;
 scalar_t__ SZ_OK ;
 int stub1 (TYPE_1__*,int *,int) ;

__attribute__((used)) static SRes Lzma2Enc_EncodeMt1(CLzma2EncInt *p, CLzma2Enc *mainEncoder,
  ISeqOutStream *outStream, ISeqInStream *inStream, ICompressProgress *progress)
{
  UInt64 packTotal = 0;
  SRes res = SZ_OK;

  if (mainEncoder->outBuf == 0)
  {
    mainEncoder->outBuf = (Byte *)IAlloc_Alloc(mainEncoder->alloc, LZMA2_CHUNK_SIZE_COMPRESSED_MAX);
    if (mainEncoder->outBuf == 0)
      return SZ_ERROR_MEM;
  }
  RINOK(Lzma2EncInt_Init(p, &mainEncoder->props));
  RINOK(LzmaEnc_PrepareForLzma2(p->enc, inStream, LZMA2_KEEP_WINDOW_SIZE,
      mainEncoder->alloc, mainEncoder->allocBig));
  for (;;)
  {
    size_t packSize = LZMA2_CHUNK_SIZE_COMPRESSED_MAX;
    res = Lzma2EncInt_EncodeSubblock(p, mainEncoder->outBuf, &packSize, outStream);
    if (res != SZ_OK)
      break;
    packTotal += packSize;
    res = Progress(progress, p->srcPos, packTotal);
    if (res != SZ_OK)
      break;
    if (packSize == 0)
      break;
  }
  LzmaEnc_Finish(p->enc);
  if (res == SZ_OK)
  {
    Byte b = 0;
    if (outStream->Write(outStream, &b, 1) != 1)
      return SZ_ERROR_WRITE;
  }
  return res;
}
