
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int * sys; } ;
typedef TYPE_1__ vout_display_t ;
typedef int vout_display_sys_t ;
struct TYPE_13__ {scalar_t__ i_chroma; int orientation; } ;
typedef TYPE_2__ video_format_t ;
typedef enum AWindow_ID { ____Placeholder_AWindow_ID } AWindow_ID ;
struct TYPE_14__ {int id; int b_opaque; int i_android_hal; int i_angle; int i_pic_count; int fmt; } ;
typedef TYPE_3__ android_window ;


 int AWindow_Subtitles ;
 int AWindow_Video ;
 scalar_t__ AndroidWindow_ConnectSurface (int *,TYPE_3__*) ;
 int ChromaToAndroidHal (scalar_t__) ;



 scalar_t__ VLC_CODEC_ANDROID_OPAQUE ;
 TYPE_3__* calloc (int,int) ;
 int free (TYPE_3__*) ;
 int msg_Err (TYPE_1__*,char*) ;
 int video_format_ApplyRotation (int *,TYPE_2__ const*) ;

__attribute__((used)) static android_window *AndroidWindow_New(vout_display_t *vd,
                                         const video_format_t *p_fmt,
                                         enum AWindow_ID id)
{
    vout_display_sys_t *sys = vd->sys;
    android_window *p_window = ((void*)0);

    p_window = calloc(1, sizeof(android_window));
    if (!p_window)
        goto error;

    p_window->id = id;
    p_window->b_opaque = p_fmt->i_chroma == VLC_CODEC_ANDROID_OPAQUE;
    if (!p_window->b_opaque) {
        p_window->i_android_hal = ChromaToAndroidHal(p_fmt->i_chroma);
        if (p_window->i_android_hal == -1)
            goto error;
    }

    switch (p_fmt->orientation)
    {
        case 128:
            p_window->i_angle = 90;
            break;
        case 130:
            p_window->i_angle = 180;
            break;
        case 129:
            p_window->i_angle = 270;
            break;
        default:
            p_window->i_angle = 0;
    }
    video_format_ApplyRotation(&p_window->fmt, p_fmt);
    p_window->i_pic_count = 1;

    if (AndroidWindow_ConnectSurface(sys, p_window) != 0)
    {
        if (id == AWindow_Video)
            msg_Err(vd, "can't get Video Surface");
        else if (id == AWindow_Subtitles)
            msg_Err(vd, "can't get Subtitles Surface");
        goto error;
    }

    return p_window;
error:
    free(p_window);
    return ((void*)0);
}
