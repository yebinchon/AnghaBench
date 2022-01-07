
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int params ;
struct TYPE_5__ {int contentSizeFlag; } ;
struct TYPE_6__ {TYPE_1__ fParams; int cParams; } ;
typedef TYPE_2__ ZSTD_parameters ;
typedef int ZSTD_compressionParameters ;


 int DEBUGLOG (int,char*,int) ;
 int ZSTD_getCParams_internal (int,unsigned long long,size_t) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static ZSTD_parameters ZSTD_getParams_internal(int compressionLevel, unsigned long long srcSizeHint, size_t dictSize) {
    ZSTD_parameters params;
    ZSTD_compressionParameters const cParams = ZSTD_getCParams_internal(compressionLevel, srcSizeHint, dictSize);
    DEBUGLOG(5, "ZSTD_getParams (cLevel=%i)", compressionLevel);
    memset(&params, 0, sizeof(params));
    params.cParams = cParams;
    params.fParams.contentSizeFlag = 1;
    return params;
}
