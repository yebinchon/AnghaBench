
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pos; scalar_t__ size; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_10__ {int member_2; int member_1; int * member_0; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
struct TYPE_11__ {size_t outBuffContentSize; size_t outBuffFlushedSize; } ;
typedef TYPE_3__ ZSTD_CStream ;


 int CHECK_F (int ) ;
 size_t ERROR (int ) ;
 int GENERIC ;
 int ZSTD_compressStream_generic (TYPE_3__*,TYPE_1__*,TYPE_2__*,int ) ;
 int ZSTD_e_flush ;

size_t ZSTD_flushStream(ZSTD_CStream* zcs, ZSTD_outBuffer* output)
{
    ZSTD_inBuffer input = { ((void*)0), 0, 0 };
    if (output->pos > output->size) return ERROR(GENERIC);
    CHECK_F( ZSTD_compressStream_generic(zcs, output, &input, ZSTD_e_flush) );
    return zcs->outBuffContentSize - zcs->outBuffFlushedSize;
}
