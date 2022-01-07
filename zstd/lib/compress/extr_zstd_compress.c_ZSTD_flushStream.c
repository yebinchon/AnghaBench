
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_outBuffer ;
struct TYPE_3__ {int member_2; int member_1; int * member_0; } ;
typedef TYPE_1__ ZSTD_inBuffer ;
typedef int ZSTD_CStream ;


 size_t ZSTD_compressStream2 (int *,int *,TYPE_1__*,int ) ;
 int ZSTD_e_flush ;

size_t ZSTD_flushStream(ZSTD_CStream* zcs, ZSTD_outBuffer* output)
{
    ZSTD_inBuffer input = { ((void*)0), 0, 0 };
    return ZSTD_compressStream2(zcs, output, &input, ZSTD_e_flush);
}
