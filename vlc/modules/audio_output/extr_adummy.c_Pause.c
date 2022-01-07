
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int audio_output_t ;



__attribute__((used)) static void Pause(audio_output_t *aout, bool paused, vlc_tick_t date)
{
    (void) aout; (void) paused; (void) date;
}
