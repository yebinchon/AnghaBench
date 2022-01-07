
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int symbolEncodingType_e ;
struct TYPE_4__ {int workspace; int MLTable; int OFTable; int LLTable; } ;
struct TYPE_5__ {TYPE_1__ entropy; int fseEntropy; int MLTptr; int OFTptr; int LLTptr; } ;
typedef TYPE_2__ ZSTD_DCtx ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int LLFSELog ;
 int LL_defaultDTable ;
 int LONGNBSEQ ;
 size_t MIN_SEQUENCES_SIZE ;
 int MLFSELog ;
 int ML_defaultDTable ;
 int MaxLL ;
 int MaxML ;
 int MaxOff ;
 int OF_defaultDTable ;
 int OffFSELog ;
 size_t ZSTD_buildSeqTable (int ,int *,int const,int ,int ,int const*,int,int ,int ,int ,int) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int ZSTD_readLE16 (int const*) ;
 int corruption_detected ;
 int srcSize_wrong ;

size_t ZSTD_decodeSeqHeaders(ZSTD_DCtx *dctx, int *nbSeqPtr, const void *src, size_t srcSize)
{
 const BYTE *const istart = (const BYTE *const)src;
 const BYTE *const iend = istart + srcSize;
 const BYTE *ip = istart;


 if (srcSize < MIN_SEQUENCES_SIZE)
  return ERROR(srcSize_wrong);


 {
  int nbSeq = *ip++;
  if (!nbSeq) {
   *nbSeqPtr = 0;
   return 1;
  }
  if (nbSeq > 0x7F) {
   if (nbSeq == 0xFF) {
    if (ip + 2 > iend)
     return ERROR(srcSize_wrong);
    nbSeq = ZSTD_readLE16(ip) + LONGNBSEQ, ip += 2;
   } else {
    if (ip >= iend)
     return ERROR(srcSize_wrong);
    nbSeq = ((nbSeq - 0x80) << 8) + *ip++;
   }
  }
  *nbSeqPtr = nbSeq;
 }


 if (ip + 4 > iend)
  return ERROR(srcSize_wrong);
 {
  symbolEncodingType_e const LLtype = (symbolEncodingType_e)(*ip >> 6);
  symbolEncodingType_e const OFtype = (symbolEncodingType_e)((*ip >> 4) & 3);
  symbolEncodingType_e const MLtype = (symbolEncodingType_e)((*ip >> 2) & 3);
  ip++;


  {
   size_t const llhSize = ZSTD_buildSeqTable(dctx->entropy.LLTable, &dctx->LLTptr, LLtype, MaxLL, LLFSELog, ip, iend - ip,
          LL_defaultDTable, dctx->fseEntropy, dctx->entropy.workspace, sizeof(dctx->entropy.workspace));
   if (ZSTD_isError(llhSize))
    return ERROR(corruption_detected);
   ip += llhSize;
  }
  {
   size_t const ofhSize = ZSTD_buildSeqTable(dctx->entropy.OFTable, &dctx->OFTptr, OFtype, MaxOff, OffFSELog, ip, iend - ip,
          OF_defaultDTable, dctx->fseEntropy, dctx->entropy.workspace, sizeof(dctx->entropy.workspace));
   if (ZSTD_isError(ofhSize))
    return ERROR(corruption_detected);
   ip += ofhSize;
  }
  {
   size_t const mlhSize = ZSTD_buildSeqTable(dctx->entropy.MLTable, &dctx->MLTptr, MLtype, MaxML, MLFSELog, ip, iend - ip,
          ML_defaultDTable, dctx->fseEntropy, dctx->entropy.workspace, sizeof(dctx->entropy.workspace));
   if (ZSTD_isError(mlhSize))
    return ERROR(corruption_detected);
   ip += mlhSize;
  }
 }

 return ip - istart;
}
