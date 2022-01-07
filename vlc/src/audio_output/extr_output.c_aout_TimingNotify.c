
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int audio_output_t ;


 int aout_RequestRetiming (int *,int ,int ) ;

__attribute__((used)) static void aout_TimingNotify(audio_output_t *aout, vlc_tick_t system_ts,
                              vlc_tick_t audio_ts)
{
    aout_RequestRetiming(aout, system_ts, audio_ts);
}
