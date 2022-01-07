
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mute; int volume; } ;
typedef TYPE_1__ pa_sink_input_info ;
typedef int pa_context ;
struct TYPE_8__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_9__ {int cvolume; } ;
typedef TYPE_3__ aout_sys_t ;


 int VolumeReport (TYPE_2__*) ;
 int aout_MuteReport (TYPE_2__*,int ) ;

__attribute__((used)) static void sink_input_info_cb(pa_context *ctx, const pa_sink_input_info *i,
                               int eol, void *userdata)
{
    audio_output_t *aout = userdata;
    aout_sys_t *sys = aout->sys;

    if (eol)
        return;
    (void) ctx;

    sys->cvolume = i->volume;
    VolumeReport(aout);
    aout_MuteReport(aout, i->mute);
}
