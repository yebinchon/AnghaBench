
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_8__ {int (* Read ) (TYPE_2__*,int *,size_t*) ;} ;
struct TYPE_7__ {size_t (* Write ) (TYPE_1__*,int *,size_t) ;} ;
typedef scalar_t__ SizeT ;
typedef scalar_t__ SRes ;
typedef scalar_t__ Int64 ;
typedef TYPE_1__ ISeqOutStream ;
typedef TYPE_2__ ISeqInStream ;
typedef scalar_t__ ELzmaStatus ;
typedef int ELzmaFinishMode ;
typedef int CLzmaDec ;
typedef int Byte ;


 int IN_BUF_SIZE ;
 int LZMA_FINISH_ANY ;
 int LZMA_FINISH_END ;
 scalar_t__ LZMA_STATUS_FINISHED_WITH_MARK ;
 scalar_t__ LzmaDec_DecodeToBuf (int *,int *,scalar_t__*,int *,scalar_t__*,int ,scalar_t__*) ;
 int LzmaDec_Init (int *) ;
 int OUT_BUF_SIZE ;
 int RINOK (int ) ;
 scalar_t__ SZ_ERROR_DATA ;
 scalar_t__ SZ_ERROR_WRITE ;
 scalar_t__ SZ_OK ;
 int stub1 (TYPE_2__*,int *,size_t*) ;
 size_t stub2 (TYPE_1__*,int *,size_t) ;

__attribute__((used)) static SRes Decode2(CLzmaDec *state, ISeqOutStream *outStream, ISeqInStream *inStream,
    UInt64 unpackSize)
{
  int thereIsSize = (unpackSize != (UInt64)(Int64)-1);
  Byte inBuf[IN_BUF_SIZE];
  Byte outBuf[OUT_BUF_SIZE];
  size_t inPos = 0, inSize = 0, outPos = 0;
  LzmaDec_Init(state);
  for (;;)
  {
    if (inPos == inSize)
    {
      inSize = IN_BUF_SIZE;
      RINOK(inStream->Read(inStream, inBuf, &inSize));
      inPos = 0;
    }
    {
      SRes res;
      SizeT inProcessed = inSize - inPos;
      SizeT outProcessed = OUT_BUF_SIZE - outPos;
      ELzmaFinishMode finishMode = LZMA_FINISH_ANY;
      ELzmaStatus status;
      if (thereIsSize && outProcessed > unpackSize)
      {
        outProcessed = (SizeT)unpackSize;
        finishMode = LZMA_FINISH_END;
      }

      res = LzmaDec_DecodeToBuf(state, outBuf + outPos, &outProcessed,
        inBuf + inPos, &inProcessed, finishMode, &status);
      inPos += inProcessed;
      outPos += outProcessed;
      unpackSize -= outProcessed;

      if (outStream)
        if (outStream->Write(outStream, outBuf, outPos) != outPos)
          return SZ_ERROR_WRITE;

      outPos = 0;

      if (res != SZ_OK || thereIsSize && unpackSize == 0)
        return res;

      if (inProcessed == 0 && outProcessed == 0)
      {
        if (thereIsSize || status != LZMA_STATUS_FINISHED_WITH_MARK)
          return SZ_ERROR_DATA;
        return res;
      }
    }
  }
}
