
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;


 float var_GetFloat (int *,char*) ;

float aout_VolumeGet (audio_output_t *aout)
{
    return var_GetFloat (aout, "volume");
}
