
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int params ;
struct TYPE_4__ {int cParams; } ;
typedef TYPE_1__ ZSTD_parameters ;
typedef int ZSTD_compressionParameters ;


 int ZSTD_getCParams (int,unsigned long long,size_t) ;
 int memset (TYPE_1__*,int ,int) ;

ZSTD_parameters ZSTD_getParams(int compressionLevel, unsigned long long srcSize, size_t dictSize)
{
 ZSTD_parameters params;
 ZSTD_compressionParameters const cParams = ZSTD_getCParams(compressionLevel, srcSize, dictSize);
 memset(&params, 0, sizeof(params));
 params.cParams = cParams;
 return params;
}
