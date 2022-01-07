
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vaapi_pic_context {int surface; } ;
struct TYPE_4__ {scalar_t__ context; } ;
typedef TYPE_1__ picture_t ;
typedef int VASurfaceID ;


 int ASSERT_VAAPI_CHROMA (TYPE_1__*) ;
 int assert (scalar_t__) ;

VASurfaceID
vlc_vaapi_PicGetSurface(picture_t *pic)
{
    ASSERT_VAAPI_CHROMA(pic);
    assert(pic->context);

    return ((struct vaapi_pic_context *)pic->context)->surface;
}
