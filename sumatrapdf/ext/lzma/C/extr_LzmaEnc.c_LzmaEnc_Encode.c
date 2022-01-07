
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRes ;
typedef int ISzAlloc ;
typedef int ISeqOutStream ;
typedef int ISeqInStream ;
typedef int ICompressProgress ;
typedef scalar_t__ CLzmaEncHandle ;
typedef int CLzmaEnc ;


 int LzmaEnc_Encode2 (int *,int *) ;
 int LzmaEnc_Prepare (scalar_t__,int *,int *,int *,int *) ;
 int RINOK (int ) ;

SRes LzmaEnc_Encode(CLzmaEncHandle pp, ISeqOutStream *outStream, ISeqInStream *inStream, ICompressProgress *progress,
    ISzAlloc *alloc, ISzAlloc *allocBig)
{
  RINOK(LzmaEnc_Prepare(pp, outStream, inStream, alloc, allocBig));
  return LzmaEnc_Encode2((CLzmaEnc *)pp, progress);
}
