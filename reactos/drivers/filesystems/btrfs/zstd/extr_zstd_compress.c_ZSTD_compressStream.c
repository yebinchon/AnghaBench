
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pos; scalar_t__ size; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_8__ {scalar_t__ pos; scalar_t__ size; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
typedef int ZSTD_CStream ;


 size_t ERROR (int ) ;
 int GENERIC ;
 size_t ZSTD_compressStream_generic (int *,TYPE_1__*,TYPE_2__*,int ) ;
 int ZSTD_e_continue ;

size_t ZSTD_compressStream(ZSTD_CStream* zcs, ZSTD_outBuffer* output, ZSTD_inBuffer* input)
{

    if (output->pos > output->size) return ERROR(GENERIC);
    if (input->pos > input->size) return ERROR(GENERIC);

    return ZSTD_compressStream_generic(zcs, output, input, ZSTD_e_continue);
}
