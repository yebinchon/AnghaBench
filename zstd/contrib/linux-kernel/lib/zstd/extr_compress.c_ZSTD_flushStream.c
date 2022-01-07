
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t size; size_t pos; scalar_t__ dst; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_7__ {size_t outBuffContentSize; size_t outBuffFlushedSize; } ;
typedef TYPE_2__ ZSTD_CStream ;


 size_t ZSTD_compressStream_generic (TYPE_2__*,char*,size_t*,size_t*,size_t*,int ) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int zsf_flush ;

size_t ZSTD_flushStream(ZSTD_CStream *zcs, ZSTD_outBuffer *output)
{
 size_t srcSize = 0;
 size_t sizeWritten = output->size - output->pos;
 size_t const result = ZSTD_compressStream_generic(zcs, (char *)(output->dst) + output->pos, &sizeWritten, &srcSize,
         &srcSize,
         zsf_flush);
 output->pos += sizeWritten;
 if (ZSTD_isError(result))
  return result;
 return zcs->outBuffContentSize - zcs->outBuffFlushedSize;
}
