
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; size_t pos; void* dst; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {size_t size; scalar_t__ pos; void const* src; } ;
typedef TYPE_2__ ZSTD_inBuffer ;


 int ZSTD_CCtx_setParameter (int ,int ,int) ;
 int ZSTD_c_nbWorkers ;
 scalar_t__ ZSTD_compressStream2 (int ,TYPE_1__*,TYPE_2__*,int ) ;
 int ZSTD_e_continue ;
 int ZSTD_e_end ;
 int g_cstream ;

__attribute__((used)) static size_t
local_ZSTD_compress_generic_T2_continue(const void* src, size_t srcSize,
                                        void* dst, size_t dstCapacity,
                                        void* payload)
{
    ZSTD_outBuffer buffOut;
    ZSTD_inBuffer buffIn;
    (void)payload;
    ZSTD_CCtx_setParameter(g_cstream, ZSTD_c_nbWorkers, 2);
    buffOut.dst = dst;
    buffOut.size = dstCapacity;
    buffOut.pos = 0;
    buffIn.src = src;
    buffIn.size = srcSize;
    buffIn.pos = 0;
    ZSTD_compressStream2(g_cstream, &buffOut, &buffIn, ZSTD_e_continue);
    while(ZSTD_compressStream2(g_cstream, &buffOut, &buffIn, ZSTD_e_end)) {}
    return buffOut.pos;
}
