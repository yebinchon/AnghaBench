
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int b_mute; float f_volume; int au_unit; scalar_t__ b_digital; } ;
typedef TYPE_2__ aout_sys_t ;
typedef scalar_t__ OSStatus ;


 scalar_t__ AudioUnitSetParameter (int ,int ,int ,int ,float,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int aout_MuteReport (TYPE_1__*,int) ;
 int kAudioUnitScope_Global ;
 int kHALOutputParam_Volume ;
 scalar_t__ noErr ;

__attribute__((used)) static int
MuteSet(audio_output_t * p_aout, bool mute)
{
    aout_sys_t *p_sys = p_aout->sys;

    if(p_sys->b_digital)
        return VLC_EGENERIC;

    p_sys->b_mute = mute;
    aout_MuteReport(p_aout, mute);

    float volume = .0;
    if (!mute)
        volume = p_sys->f_volume;

    OSStatus err =
        AudioUnitSetParameter(p_sys->au_unit, kHALOutputParam_Volume,
                              kAudioUnitScope_Global, 0,
                              volume * volume * volume, 0);

    return err == noErr ? VLC_SUCCESS : VLC_EGENERIC;
}
