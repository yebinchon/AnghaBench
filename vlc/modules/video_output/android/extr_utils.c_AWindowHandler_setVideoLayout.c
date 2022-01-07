
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_has_video_layout_listener; } ;
typedef int JNIEnv ;
typedef TYPE_1__ AWindowHandler ;


 int * AWindowHandler_getEnv (TYPE_1__*) ;
 int CallVoidMethod ;
 int JNI_ANWCALL (int ,int ,int,int,int,int,int,int) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 int setVideoLayout ;

int
AWindowHandler_setVideoLayout(AWindowHandler *p_awh,
                              int i_width, int i_height,
                              int i_visible_width, int i_visible_height,
                              int i_sar_num, int i_sar_den)
{
    assert(p_awh->b_has_video_layout_listener);
    JNIEnv *p_env = AWindowHandler_getEnv(p_awh);
    if (!p_env)
        return VLC_EGENERIC;

    JNI_ANWCALL(CallVoidMethod, setVideoLayout, i_width, i_height,
                i_visible_width,i_visible_height, i_sar_num, i_sar_den);
    return VLC_SUCCESS;
}
