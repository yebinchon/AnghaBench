
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int synthUnit; int end_date; } ;
typedef TYPE_2__ decoder_sys_t ;


 int MusicDeviceMIDIEvent (int ,unsigned int,int ,int ,int ) ;
 int VLC_TICK_INVALID ;
 int date_Set (int *,int ) ;
 int kMidiController_AllSoundOff ;
 unsigned int kMidiMessage_ControlChange ;

__attribute__((used)) static void Flush (decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    date_Set(&p_sys->end_date, VLC_TICK_INVALID);



    for (unsigned channel = 0; channel < 16; channel++) {
        MusicDeviceMIDIEvent(p_sys->synthUnit, kMidiMessage_ControlChange | channel, kMidiController_AllSoundOff, 0, 0);
    }
}
