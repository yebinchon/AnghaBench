
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int stop; int start; int * sys; } ;
typedef TYPE_1__ audio_output_t ;
typedef int aout_sys_t ;


 int Start ;
 int Stop ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * malloc (int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int Open (vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;
    aout_sys_t *sys = malloc (sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    aout->sys = sys;
    aout->start = Start;
    aout->stop = Stop;

    return VLC_SUCCESS;
}
