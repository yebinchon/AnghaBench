
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CVReturn ;
typedef int * CVPixelBufferRef ;
typedef int CVPixelBufferPoolRef ;


 scalar_t__ CVPixelBufferPoolCreatePixelBuffer (int *,int ,int **) ;
 scalar_t__ kCVReturnSuccess ;

CVPixelBufferRef
cvpxpool_new_cvpx(CVPixelBufferPoolRef pool)
{
    CVPixelBufferRef cvpx;
    CVReturn err = CVPixelBufferPoolCreatePixelBuffer(((void*)0), pool, &cvpx);

    if (err != kCVReturnSuccess)
        return ((void*)0);

    return cvpx;
}
