
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cctx; int buffOutSize; void* buffOut; int buffInSize; void* buffIn; } ;
typedef TYPE_1__ resources ;


 int CHECK (int ,char*) ;
 int CHECK_ZSTD (int ) ;
 int ZSTD_CCtx_setParameter (int *,int ,int) ;
 int ZSTD_CStreamInSize () ;
 int ZSTD_CStreamOutSize () ;
 int ZSTD_c_checksumFlag ;
 int ZSTD_c_compressionLevel ;
 int * ZSTD_createCCtx () ;
 void* malloc_orDie (int ) ;

__attribute__((used)) static resources createResources_orDie(int cLevel)
{
    resources ress;
    ress.buffInSize = ZSTD_CStreamInSize();
    ress.buffOutSize= ZSTD_CStreamOutSize();
    ress.buffIn = malloc_orDie(ress.buffInSize);
    ress.buffOut= malloc_orDie(ress.buffOutSize);
    ress.cctx = ZSTD_createCCtx();
    CHECK(ress.cctx != ((void*)0), "ZSTD_createCCtx() failed!");





    CHECK_ZSTD( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_compressionLevel, cLevel) );
    CHECK_ZSTD( ZSTD_CCtx_setParameter(ress.cctx, ZSTD_c_checksumFlag, 1) );
    return ress;
}
