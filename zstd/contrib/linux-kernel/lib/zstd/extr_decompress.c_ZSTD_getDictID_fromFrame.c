
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dictID; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ ZSTD_frameParams ;


 size_t ZSTD_getFrameParams (TYPE_1__*,void const*,size_t) ;
 scalar_t__ ZSTD_isError (size_t const) ;

unsigned ZSTD_getDictID_fromFrame(const void *src, size_t srcSize)
{
 ZSTD_frameParams zfp = {0, 0, 0, 0};
 size_t const hError = ZSTD_getFrameParams(&zfp, src, srcSize);
 if (ZSTD_isError(hError))
  return 0;
 return zfp.dictID;
}
