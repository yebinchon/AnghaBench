
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mlen; scalar_t__ litlen; } ;
typedef TYPE_1__ ZSTD_optimal_t ;
typedef scalar_t__ U32 ;



__attribute__((used)) static U32 ZSTD_totalLen(ZSTD_optimal_t sol)
{
    return sol.litlen + sol.mlen;
}
