
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vaapi_pic_context {int s; } ;
struct TYPE_4__ {int * context; } ;
typedef TYPE_1__ picture_t ;


 int ASSERT_VAAPI_CHROMA (TYPE_1__*) ;
 int assert (int ) ;

void
vlc_vaapi_PicSetContext(picture_t *pic, struct vaapi_pic_context *vaapi_ctx)
{
    ASSERT_VAAPI_CHROMA(pic);
    assert(pic->context == ((void*)0));

    pic->context = &vaapi_ctx->s;
}
