
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ToxAV ;
typedef int Tox ;
typedef scalar_t__ TOXAV_ERR_NEW ;
typedef int CallControl ;


 scalar_t__ TOXAV_ERR_NEW_OK ;
 int ck_assert (int) ;
 int t_toxav_call_cb ;
 int t_toxav_call_state_cb ;
 int t_toxav_receive_audio_frame_cb ;
 int t_toxav_receive_video_frame_cb ;
 int toxav_callback_audio_receive_frame (int *,int ,int *) ;
 int toxav_callback_call (int *,int ,int *) ;
 int toxav_callback_call_state (int *,int ,int *) ;
 int toxav_callback_video_receive_frame (int *,int ,int *) ;
 int * toxav_new (int *,scalar_t__*) ;

ToxAV *setup_av_instance(Tox *tox, CallControl *CC)
{
    TOXAV_ERR_NEW error;

    ToxAV *av = toxav_new(tox, &error);
    ck_assert(error == TOXAV_ERR_NEW_OK);

    toxav_callback_call(av, t_toxav_call_cb, CC);
    toxav_callback_call_state(av, t_toxav_call_state_cb, CC);
    toxav_callback_video_receive_frame(av, t_toxav_receive_video_frame_cb, CC);
    toxav_callback_audio_receive_frame(av, t_toxav_receive_audio_frame_cb, CC);

    return av;
}
