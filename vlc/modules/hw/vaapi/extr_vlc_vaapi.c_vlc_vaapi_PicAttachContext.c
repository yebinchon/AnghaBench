
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_7__ {int ctx; TYPE_2__* picref; } ;
struct TYPE_9__ {TYPE_1__ ctx; } ;
typedef TYPE_3__ picture_sys_t ;


 int ASSERT_VAAPI_CHROMA (TYPE_2__*) ;
 int assert (int ) ;
 int vlc_vaapi_PicSetContext (TYPE_2__*,int *) ;

void
vlc_vaapi_PicAttachContext(picture_t *pic)
{
    ASSERT_VAAPI_CHROMA(pic);
    assert(pic->p_sys != ((void*)0));

    picture_sys_t *p_sys = pic->p_sys;
    p_sys->ctx.picref = pic;
    vlc_vaapi_PicSetContext(pic, &p_sys->ctx.ctx);
}
