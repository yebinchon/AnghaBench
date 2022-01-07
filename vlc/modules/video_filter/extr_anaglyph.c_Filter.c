
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int i_chroma; } ;
struct TYPE_18__ {TYPE_1__ format; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_19__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_20__ {int right; int left; } ;
typedef TYPE_4__ filter_sys_t ;


 TYPE_2__* CopyInfoAndRelease (TYPE_2__*,TYPE_2__*) ;



 int combine_side_by_side_yuv420 (TYPE_2__*,TYPE_2__*,int ,int ) ;
 TYPE_2__* filter_NewPicture (TYPE_3__*) ;
 int msg_Warn (TYPE_3__*,char*,char*) ;
 int picture_Release (TYPE_2__*) ;

__attribute__((used)) static picture_t *Filter(filter_t *p_filter, picture_t *p_pic)
{
    filter_sys_t *p_sys = p_filter->p_sys;

    if (!p_pic)
        return ((void*)0);

    picture_t *p_outpic = filter_NewPicture(p_filter);
    if (!p_outpic)
    {
        picture_Release(p_pic);
        return ((void*)0);
    }

    switch (p_pic->format.i_chroma)
    {
        case 130:
        case 129:
        case 128:
            combine_side_by_side_yuv420(p_pic, p_outpic,
                                        p_sys->left, p_sys->right);
            break;

        default:
            msg_Warn(p_filter, "Unsupported input chroma (%4.4s)",
                     (char*)&(p_pic->format.i_chroma));
            picture_Release(p_pic);
            return ((void*)0);
    }

    return CopyInfoAndRelease(p_outpic, p_pic);
}
