
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int audio_sample_format_t ;
struct TYPE_12__ {int flush; int pause; int play; int time_get; TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_11__ {int mute; int volume; } ;
struct TYPE_13__ {TYPE_1__ volume; int s; } ;
typedef TYPE_3__ aout_sys_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ InitDirectSound (TYPE_2__*) ;
 int MuteSet (TYPE_2__*,int ) ;
 int OutputFlush ;
 int OutputPause ;
 int OutputPlay ;
 int OutputTimeGet ;
 int Start (int ,int *,int *) ;
 int VLC_OBJECT (TYPE_2__*) ;
 int VolumeSet (TYPE_2__*,int ) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int msg_Err (TYPE_2__*,char*) ;

__attribute__((used)) static int OutputStart( audio_output_t *p_aout,
                        audio_sample_format_t *restrict fmt )
{
    msg_Dbg( p_aout, "Opening DirectSound Audio Output" );


    if( InitDirectSound( p_aout ) )
    {
        msg_Err( p_aout, "cannot initialize DirectSound" );
        return -1;
    }

    aout_sys_t *sys = p_aout->sys;
    HRESULT hr = Start( VLC_OBJECT(p_aout), &sys->s, fmt );
    if( FAILED(hr) )
        return -1;


    VolumeSet( p_aout, sys->volume.volume );
    MuteSet( p_aout, sys->volume.mute );


    p_aout->time_get = OutputTimeGet;
    p_aout->play = OutputPlay;
    p_aout->pause = OutputPause;
    p_aout->flush = OutputFlush;

    return 0;
}
