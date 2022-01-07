
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_7__ {scalar_t__ i_new_selected_dev; } ;
typedef TYPE_2__ aout_sys_t ;


 int AOUT_RESTART_OUTPUT ;
 int aout_DeviceReport (TYPE_1__*,char const*) ;
 int aout_RestartRequest (TYPE_1__*,int ) ;
 scalar_t__ atoi (char const*) ;

__attribute__((used)) static int
SwitchAudioDevice(audio_output_t *p_aout, const char *name)
{
    aout_sys_t *p_sys = p_aout->sys;

    if (name)
        p_sys->i_new_selected_dev = atoi(name);
    else
        p_sys->i_new_selected_dev = 0;

    p_sys->i_new_selected_dev = p_sys->i_new_selected_dev;

    aout_DeviceReport(p_aout, name);
    aout_RestartRequest(p_aout, AOUT_RESTART_OUTPUT);

    return 0;
}
