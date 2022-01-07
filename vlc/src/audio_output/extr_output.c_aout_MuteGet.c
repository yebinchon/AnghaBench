
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;


 int var_InheritBool (int *,char*) ;

int aout_MuteGet (audio_output_t *aout)
{
    return var_InheritBool (aout, "mute");
}
