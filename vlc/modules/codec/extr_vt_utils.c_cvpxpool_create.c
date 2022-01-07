
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_chroma; unsigned int i_visible_width; unsigned int i_visible_height; } ;
typedef TYPE_1__ video_format_t ;
typedef scalar_t__ CVReturn ;
typedef int * CVPixelBufferRef ;
typedef int * CVPixelBufferPoolRef ;
typedef int * CFMutableDictionaryRef ;


 int CFDictionarySetValue (int *,int ,int *) ;
 int CFRelease (int *) ;
 scalar_t__ CVPixelBufferPoolCreate (int *,int *,int *,int **) ;
 scalar_t__ CVPixelBufferPoolCreatePixelBuffer (int *,int *,int **) ;
 int CVPixelBufferPoolRelease (int *) ;





 int * cfdict_create (int) ;
 int cfdict_set_int32 (int *,int ,unsigned int) ;
 int kCVPixelBufferBytesPerRowAlignmentKey ;
 int kCVPixelBufferHeightKey ;
 int kCVPixelBufferIOSurfacePropertiesKey ;
 int kCVPixelBufferPixelFormatTypeKey ;
 int kCVPixelBufferPoolMaximumBufferAgeKey ;
 int kCVPixelBufferPoolMinimumBufferCountKey ;
 int kCVPixelBufferWidthKey ;
 int kCVPixelFormatType_32BGRA ;
 int kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange ;
 int kCVPixelFormatType_420YpCbCr8Planar ;
 int kCVPixelFormatType_422YpCbCr8 ;
 scalar_t__ kCVReturnSuccess ;
 scalar_t__ unlikely (int ) ;

CVPixelBufferPoolRef
cvpxpool_create(const video_format_t *fmt, unsigned count)
{
    int cvpx_format;
    switch (fmt->i_chroma)
    {
        case 128:
            cvpx_format = kCVPixelFormatType_422YpCbCr8;
            break;
        case 130:
            cvpx_format = kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange;
            break;
        case 131:
            cvpx_format = kCVPixelFormatType_420YpCbCr8Planar;
            break;
        case 132:
            cvpx_format = kCVPixelFormatType_32BGRA;
            break;
        case 129:
            cvpx_format = 'x420';
            break;
        default:
            return ((void*)0);
    }


    CFMutableDictionaryRef cvpx_attrs_dict = cfdict_create(5);
    if (unlikely(cvpx_attrs_dict == ((void*)0)))
        return ((void*)0);
    CFMutableDictionaryRef pool_dict = cfdict_create(2);
    if (unlikely(pool_dict == ((void*)0)))
    {
        CFRelease(cvpx_attrs_dict);
        return ((void*)0);
    }

    CFMutableDictionaryRef io_dict = cfdict_create(0);
    if (unlikely(io_dict == ((void*)0)))
    {
        CFRelease(cvpx_attrs_dict);
        CFRelease(pool_dict);
        return ((void*)0);
    }
    CFDictionarySetValue(cvpx_attrs_dict,
                         kCVPixelBufferIOSurfacePropertiesKey, io_dict);
    CFRelease(io_dict);

    cfdict_set_int32(cvpx_attrs_dict, kCVPixelBufferPixelFormatTypeKey,
                     cvpx_format);
    cfdict_set_int32(cvpx_attrs_dict, kCVPixelBufferWidthKey, fmt->i_visible_width);
    cfdict_set_int32(cvpx_attrs_dict, kCVPixelBufferHeightKey, fmt->i_visible_height);

    cfdict_set_int32(cvpx_attrs_dict, kCVPixelBufferBytesPerRowAlignmentKey, 16);

    cfdict_set_int32(pool_dict, kCVPixelBufferPoolMinimumBufferCountKey, count);
    cfdict_set_int32(pool_dict, kCVPixelBufferPoolMaximumBufferAgeKey, 0);

    CVPixelBufferPoolRef pool;
    CVReturn err =
        CVPixelBufferPoolCreate(((void*)0), pool_dict, cvpx_attrs_dict, &pool);
    CFRelease(pool_dict);
    CFRelease(cvpx_attrs_dict);
    if (err != kCVReturnSuccess)
        return ((void*)0);

    CVPixelBufferRef cvpxs[count];
    for (unsigned i = 0; i < count; ++i)
    {
        err = CVPixelBufferPoolCreatePixelBuffer(((void*)0), pool, &cvpxs[i]);
        if (err != kCVReturnSuccess)
        {
            CVPixelBufferPoolRelease(pool);
            pool = ((void*)0);
            count = i;
            break;
        }
    }
    for (unsigned i = 0; i < count; ++i)
        CFRelease(cvpxs[i]);

    return pool;
}
