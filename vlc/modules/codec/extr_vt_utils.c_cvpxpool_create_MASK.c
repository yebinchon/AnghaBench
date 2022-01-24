#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int i_chroma; unsigned int i_visible_width; unsigned int i_visible_height; } ;
typedef  TYPE_1__ video_format_t ;
typedef  scalar_t__ CVReturn ;
typedef  int /*<<< orphan*/ * CVPixelBufferRef ;
typedef  int /*<<< orphan*/ * CVPixelBufferPoolRef ;
typedef  int /*<<< orphan*/ * CFMutableDictionaryRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
#define  VLC_CODEC_CVPX_BGRA 132 
#define  VLC_CODEC_CVPX_I420 131 
#define  VLC_CODEC_CVPX_NV12 130 
#define  VLC_CODEC_CVPX_P010 129 
#define  VLC_CODEC_CVPX_UYVY 128 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  kCVPixelBufferBytesPerRowAlignmentKey ; 
 int /*<<< orphan*/  kCVPixelBufferHeightKey ; 
 int /*<<< orphan*/  kCVPixelBufferIOSurfacePropertiesKey ; 
 int /*<<< orphan*/  kCVPixelBufferPixelFormatTypeKey ; 
 int /*<<< orphan*/  kCVPixelBufferPoolMaximumBufferAgeKey ; 
 int /*<<< orphan*/  kCVPixelBufferPoolMinimumBufferCountKey ; 
 int /*<<< orphan*/  kCVPixelBufferWidthKey ; 
 int kCVPixelFormatType_32BGRA ; 
 int kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange ; 
 int kCVPixelFormatType_420YpCbCr8Planar ; 
 int kCVPixelFormatType_422YpCbCr8 ; 
 scalar_t__ kCVReturnSuccess ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

CVPixelBufferPoolRef
FUNC8(const video_format_t *fmt, unsigned count)
{
    int cvpx_format;
    switch (fmt->i_chroma)
    {
        case VLC_CODEC_CVPX_UYVY:
            cvpx_format = kCVPixelFormatType_422YpCbCr8;
            break;
        case VLC_CODEC_CVPX_NV12:
            cvpx_format = kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange;
            break;
        case VLC_CODEC_CVPX_I420:
            cvpx_format = kCVPixelFormatType_420YpCbCr8Planar;
            break;
        case VLC_CODEC_CVPX_BGRA:
            cvpx_format = kCVPixelFormatType_32BGRA;
            break;
        case VLC_CODEC_CVPX_P010:
            cvpx_format = 'x420'; /* kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange */
            break;
        default:
            return NULL;
    }

    /* destination pixel buffer attributes */
    CFMutableDictionaryRef cvpx_attrs_dict = FUNC5(5);
    if (FUNC7(cvpx_attrs_dict == NULL))
        return NULL;
    CFMutableDictionaryRef pool_dict = FUNC5(2);
    if (FUNC7(pool_dict == NULL))
    {
        FUNC1(cvpx_attrs_dict);
        return NULL;
    }

    CFMutableDictionaryRef io_dict = FUNC5(0);
    if (FUNC7(io_dict == NULL))
    {
        FUNC1(cvpx_attrs_dict);
        FUNC1(pool_dict);
        return NULL;
    }
    FUNC0(cvpx_attrs_dict,
                         kCVPixelBufferIOSurfacePropertiesKey, io_dict);
    FUNC1(io_dict);

    FUNC6(cvpx_attrs_dict, kCVPixelBufferPixelFormatTypeKey,
                     cvpx_format);
    FUNC6(cvpx_attrs_dict, kCVPixelBufferWidthKey, fmt->i_visible_width);
    FUNC6(cvpx_attrs_dict, kCVPixelBufferHeightKey, fmt->i_visible_height);
    /* Required by CIFilter to render IOSurface */
    FUNC6(cvpx_attrs_dict, kCVPixelBufferBytesPerRowAlignmentKey, 16);

    FUNC6(pool_dict, kCVPixelBufferPoolMinimumBufferCountKey, count);
    FUNC6(pool_dict, kCVPixelBufferPoolMaximumBufferAgeKey, 0);

    CVPixelBufferPoolRef pool;
    CVReturn err =
        FUNC2(NULL, pool_dict, cvpx_attrs_dict, &pool);
    FUNC1(pool_dict);
    FUNC1(cvpx_attrs_dict);
    if (err != kCVReturnSuccess)
        return NULL;

    CVPixelBufferRef cvpxs[count];
    for (unsigned i = 0; i < count; ++i)
    {
        err = FUNC3(NULL, pool, &cvpxs[i]);
        if (err != kCVReturnSuccess)
        {
            FUNC4(pool);
            pool = NULL;
            count = i;
            break;
        }
    }
    for (unsigned i = 0; i < count; ++i)
        FUNC1(cvpxs[i]);

    return pool;
}