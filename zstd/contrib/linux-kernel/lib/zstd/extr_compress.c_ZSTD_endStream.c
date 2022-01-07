
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pos; int size; scalar_t__ dst; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_7__ {scalar_t__ pledgedSrcSize; scalar_t__ inputProcessed; scalar_t__ stage; size_t outBuffContentSize; size_t outBuffFlushedSize; int checksum; size_t outBuff; int outBuffSize; int cctx; } ;
typedef TYPE_2__ ZSTD_CStream ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 size_t ZSTD_BLOCKHEADERSIZE ;
 size_t ZSTD_compressEnd (int ,size_t,int ,int *,int ) ;
 size_t ZSTD_compressStream_generic (TYPE_2__*,int * const,size_t*,size_t*,size_t*,int ) ;
 size_t ZSTD_limitCopy (int *,int,size_t,size_t const) ;
 int srcSize_wrong ;
 scalar_t__ zcss_final ;
 scalar_t__ zcss_init ;
 int zsf_end ;

size_t ZSTD_endStream(ZSTD_CStream *zcs, ZSTD_outBuffer *output)
{
 BYTE *const ostart = (BYTE *)(output->dst) + output->pos;
 BYTE *const oend = (BYTE *)(output->dst) + output->size;
 BYTE *op = ostart;

 if ((zcs->pledgedSrcSize) && (zcs->inputProcessed != zcs->pledgedSrcSize))
  return ERROR(srcSize_wrong);

 if (zcs->stage != zcss_final) {

  size_t srcSize = 0;
  size_t sizeWritten = output->size - output->pos;
  size_t const notEnded =
      ZSTD_compressStream_generic(zcs, ostart, &sizeWritten, &srcSize, &srcSize, zsf_end);
  size_t const remainingToFlush = zcs->outBuffContentSize - zcs->outBuffFlushedSize;
  op += sizeWritten;
  if (remainingToFlush) {
   output->pos += sizeWritten;
   return remainingToFlush + ZSTD_BLOCKHEADERSIZE + (zcs->checksum * 4);
  }

  zcs->stage = zcss_final;
  zcs->outBuffContentSize = !notEnded ? 0 : ZSTD_compressEnd(zcs->cctx, zcs->outBuff, zcs->outBuffSize, ((void*)0),
            0);
 }


 {
  size_t const toFlush = zcs->outBuffContentSize - zcs->outBuffFlushedSize;
  size_t const flushed = ZSTD_limitCopy(op, oend - op, zcs->outBuff + zcs->outBuffFlushedSize, toFlush);
  op += flushed;
  zcs->outBuffFlushedSize += flushed;
  output->pos += op - ostart;
  if (toFlush == flushed)
   zcs->stage = zcss_init;
  return toFlush - flushed;
 }
}
