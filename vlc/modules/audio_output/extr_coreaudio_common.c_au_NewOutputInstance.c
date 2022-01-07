
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int audio_output_t ;
struct TYPE_3__ {int componentFlagsMask; int componentFlags; int componentManufacturer; int componentSubType; int componentType; } ;
typedef int OSType ;
typedef scalar_t__ OSStatus ;
typedef int * AudioUnit ;
typedef TYPE_1__ AudioComponentDescription ;
typedef int * AudioComponent ;


 int * AudioComponentFindNext (int *,TYPE_1__*) ;
 scalar_t__ AudioComponentInstanceNew (int *,int **) ;
 int ca_LogErr (char*) ;
 int kAudioUnitManufacturer_Apple ;
 int kAudioUnitType_Output ;
 int msg_Err (int *,char*) ;
 scalar_t__ noErr ;

AudioUnit
au_NewOutputInstance(audio_output_t *p_aout, OSType comp_sub_type)
{
    AudioComponentDescription desc = {
        .componentType = kAudioUnitType_Output,
        .componentSubType = comp_sub_type,
        .componentManufacturer = kAudioUnitManufacturer_Apple,
        .componentFlags = 0,
        .componentFlagsMask = 0,
    };

    AudioComponent au_component;
    au_component = AudioComponentFindNext(((void*)0), &desc);
    if (au_component == ((void*)0))
    {
        msg_Err(p_aout, "cannot find any AudioComponent, PCM output failed");
        return ((void*)0);
    }

    AudioUnit au;
    OSStatus err = AudioComponentInstanceNew(au_component, &au);
    if (err != noErr)
    {
        ca_LogErr("cannot open AudioComponent, PCM output failed");
        return ((void*)0);
    }
    return au;
}
