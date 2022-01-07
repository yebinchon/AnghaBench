
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {scalar_t__ format; int amplify; } ;
typedef TYPE_1__ audio_volume_t ;


 int AmplifyFloat ;
 scalar_t__ VLC_CODEC_FL32 ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vlc_CPU_ARM_NEON () ;

__attribute__((used)) static int Probe(vlc_object_t *obj)
{
    audio_volume_t *volume = (audio_volume_t *)obj;

    if (!vlc_CPU_ARM_NEON())
        return VLC_EGENERIC;
    if (volume->format == VLC_CODEC_FL32)
        volume->amplify = AmplifyFloat;
    else
        return VLC_EGENERIC;
    return VLC_SUCCESS;
}
