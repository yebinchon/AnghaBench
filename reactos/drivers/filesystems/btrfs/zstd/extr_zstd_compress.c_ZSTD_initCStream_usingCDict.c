
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ ZSTD_frameParameters ;
typedef int ZSTD_CStream ;
typedef int ZSTD_CDict ;


 int DEBUGLOG (int,char*) ;
 int ZSTD_CONTENTSIZE_UNKNOWN ;
 size_t ZSTD_initCStream_usingCDict_advanced (int *,int const*,TYPE_1__ const,int ) ;

size_t ZSTD_initCStream_usingCDict(ZSTD_CStream* zcs, const ZSTD_CDict* cdict)
{
    ZSTD_frameParameters const fParams = { 0 , 0 , 0 };
    DEBUGLOG(4, "ZSTD_initCStream_usingCDict");
    return ZSTD_initCStream_usingCDict_advanced(zcs, cdict, fParams, ZSTD_CONTENTSIZE_UNKNOWN);
}
