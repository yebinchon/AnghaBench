
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int targetLength; int strategy; } ;
struct TYPE_5__ {int literalCompressionMode; TYPE_1__ cParams; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;


 int ZSTD_fast ;



 int assert (int ) ;

__attribute__((used)) static int ZSTD_disableLiteralsCompression(const ZSTD_CCtx_params* cctxParams)
{
    switch (cctxParams->literalCompressionMode) {
    case 129:
        return 0;
    case 128:
        return 1;
    default:
        assert(0 );

    case 130:
        return (cctxParams->cParams.strategy == ZSTD_fast) && (cctxParams->cParams.targetLength > 0);
    }
}
