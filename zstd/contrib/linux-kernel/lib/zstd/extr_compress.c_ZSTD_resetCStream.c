
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int contentSizeFlag; } ;
struct TYPE_7__ {TYPE_1__ fParams; } ;
struct TYPE_8__ {TYPE_2__ params; } ;
typedef TYPE_3__ ZSTD_CStream ;


 size_t ZSTD_resetCStream_internal (TYPE_3__*,unsigned long long) ;

size_t ZSTD_resetCStream(ZSTD_CStream *zcs, unsigned long long pledgedSrcSize)
{

 zcs->params.fParams.contentSizeFlag = (pledgedSrcSize > 0);

 return ZSTD_resetCStream_internal(zcs, pledgedSrcSize);
}
