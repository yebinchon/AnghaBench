
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ noForwardProgress; int streamStage; } ;
typedef TYPE_1__ ZSTD_DStream ;


 int CHECK_F (int ) ;
 int DEBUGLOG (int,char*) ;
 int ZSTD_DCtx_loadDictionary (TYPE_1__*,void const*,size_t) ;
 size_t ZSTD_frameHeaderSize_prefix ;
 int zdss_init ;

size_t ZSTD_initDStream_usingDict(ZSTD_DStream* zds, const void* dict, size_t dictSize)
{
    DEBUGLOG(4, "ZSTD_initDStream_usingDict");
    zds->streamStage = zdss_init;
    zds->noForwardProgress = 0;
    CHECK_F( ZSTD_DCtx_loadDictionary(zds, dict, dictSize) );
    return ZSTD_frameHeaderSize_prefix;
}
