
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; size_t pos; scalar_t__ dst; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {size_t size; size_t pos; scalar_t__ src; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
typedef int ZSTD_CStream ;


 size_t ZSTD_compressStream_generic (int *,char*,size_t*,char const*,size_t*,int ) ;
 int zsf_gather ;

size_t ZSTD_compressStream(ZSTD_CStream *zcs, ZSTD_outBuffer *output, ZSTD_inBuffer *input)
{
 size_t sizeRead = input->size - input->pos;
 size_t sizeWritten = output->size - output->pos;
 size_t const result =
     ZSTD_compressStream_generic(zcs, (char *)(output->dst) + output->pos, &sizeWritten, (const char *)(input->src) + input->pos, &sizeRead, zsf_gather);
 input->pos += sizeRead;
 output->pos += sizeWritten;
 return result;
}
