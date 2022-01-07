
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_clock_t ;
struct input_decoder_callbacks {int dummy; } ;
struct TYPE_12__ {scalar_t__ i_cat; } ;
struct TYPE_14__ {TYPE_1__ fmt_in; int p_module; } ;
struct decoder_owner {int error; int thread; int * p_sout_input; int p_sout; TYPE_3__ dec; } ;
typedef int sout_instance_t ;
typedef int input_resource_t ;
struct TYPE_13__ {scalar_t__ i_cat; int i_codec; scalar_t__ b_packetized; } ;
typedef TYPE_2__ es_format_t ;
typedef TYPE_3__ decoder_t ;


 scalar_t__ AUDIO_ES ;
 struct decoder_owner* CreateDecoder (int *,TYPE_2__ const*,int *,int *,int *,int,struct input_decoder_callbacks const*,void*) ;
 int DecoderThread ;
 int DecoderUnsupportedCodec (TYPE_3__*,TYPE_2__ const*,int) ;
 int DeleteDecoder (TYPE_3__*) ;
 char* N_ (char*) ;
 scalar_t__ UNKNOWN_ES ;
 scalar_t__ VIDEO_ES ;
 int VLC_THREAD_PRIORITY_AUDIO ;
 int VLC_THREAD_PRIORITY_VIDEO ;
 int _ (char*) ;
 int assert (int) ;
 int msg_Err (TYPE_3__*,char*,...) ;
 int * sout_InputNew (int ,TYPE_2__ const*) ;
 scalar_t__ vlc_clone (int *,int ,struct decoder_owner*,int) ;
 int vlc_dialog_display_error (int *,int ,int ,int ) ;
 int vlc_gettext (char const*) ;

__attribute__((used)) static decoder_t *decoder_New( vlc_object_t *p_parent, const es_format_t *fmt,
                               vlc_clock_t *p_clock, input_resource_t *p_resource,
                               sout_instance_t *p_sout, bool thumbnailing,
                               const struct input_decoder_callbacks *cbs,
                               void *userdata)
{
    const char *psz_type = p_sout ? N_("packetizer") : N_("decoder");
    int i_priority;


    struct decoder_owner *p_owner = CreateDecoder( p_parent, fmt, p_clock, p_resource, p_sout,
                           thumbnailing, cbs, userdata );
    if( p_owner == ((void*)0) )
    {
        msg_Err( p_parent, "could not create %s", psz_type );
        vlc_dialog_display_error( p_parent, _("Streaming / Transcoding failed"),
            _("VLC could not open the %s module."), vlc_gettext( psz_type ) );
        return ((void*)0);
    }

    decoder_t *p_dec = &p_owner->dec;
    if( !p_dec->p_module )
    {
        DecoderUnsupportedCodec( p_dec, fmt, !p_sout );

        DeleteDecoder( p_dec );
        return ((void*)0);
    }

    assert( p_dec->fmt_in.i_cat != UNKNOWN_ES );

    if( p_dec->fmt_in.i_cat == AUDIO_ES )
        i_priority = VLC_THREAD_PRIORITY_AUDIO;
    else
        i_priority = VLC_THREAD_PRIORITY_VIDEO;
    if( vlc_clone( &p_owner->thread, DecoderThread, p_owner, i_priority ) )
    {
        msg_Err( p_dec, "cannot spawn decoder thread" );
        DeleteDecoder( p_dec );
        return ((void*)0);
    }

    return p_dec;
}
