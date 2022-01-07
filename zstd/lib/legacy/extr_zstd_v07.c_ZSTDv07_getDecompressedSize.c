
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long long frameContentSize; } ;
typedef TYPE_1__ ZSTDv07_frameParams ;


 size_t ZSTDv07_getFrameParams (TYPE_1__*,void const*,size_t) ;

unsigned long long ZSTDv07_getDecompressedSize(const void* src, size_t srcSize)
{
    ZSTDv07_frameParams fparams;
    size_t const frResult = ZSTDv07_getFrameParams(&fparams, src, srcSize);
    if (frResult!=0) return 0;
    return fparams.frameContentSize;
}
