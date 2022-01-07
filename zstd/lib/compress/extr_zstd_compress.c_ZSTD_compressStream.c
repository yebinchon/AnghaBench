
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_outBuffer ;
typedef int ZSTD_inBuffer ;
typedef int ZSTD_CStream ;


 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_compressStream2 (int *,int *,int *,int ) ;
 int ZSTD_e_continue ;
 size_t ZSTD_nextInputSizeHint_MTorST (int *) ;

size_t ZSTD_compressStream(ZSTD_CStream* zcs, ZSTD_outBuffer* output, ZSTD_inBuffer* input)
{
    FORWARD_IF_ERROR( ZSTD_compressStream2(zcs, output, input, ZSTD_e_continue) );
    return ZSTD_nextInputSizeHint_MTorST(zcs);
}
