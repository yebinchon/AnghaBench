
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_7__ {float f_volume; int au_unit; int b_mute; scalar_t__ b_digital; } ;
typedef TYPE_2__ aout_sys_t ;
typedef int OSStatus ;


 float AOUT_VOLUME_DEFAULT ;
 int AudioUnitSetParameter (int ,int ,int ,int ,float,int ) ;
 int VLC_EGENERIC ;
 int aout_VolumeReport (TYPE_1__*,float) ;
 int config_PutInt (char*,int ) ;
 int kAudioUnitScope_Global ;
 int kHALOutputParam_Volume ;
 int lroundf (float) ;
 scalar_t__ var_InheritBool (TYPE_1__*,char*) ;

__attribute__((used)) static int
VolumeSet(audio_output_t * p_aout, float volume)
{
    aout_sys_t *p_sys = p_aout->sys;
    OSStatus ostatus = 0;

    if (p_sys->b_digital)
        return VLC_EGENERIC;

    p_sys->f_volume = volume;
    aout_VolumeReport(p_aout, volume);


    if (!p_sys->b_mute)
    {
        ostatus = AudioUnitSetParameter(p_sys->au_unit,
                                        kHALOutputParam_Volume,
                                        kAudioUnitScope_Global,
                                        0,
                                        volume * volume * volume,
                                        0);
    }

    if (var_InheritBool(p_aout, "volume-save"))
        config_PutInt("auhal-volume", lroundf(volume * AOUT_VOLUME_DEFAULT));

    return ostatus;
}
