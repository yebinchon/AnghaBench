
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;


 scalar_t__ AOUT_VOLUME_DEFAULT ;
 float aout_VolumeGet (int *) ;
 int aout_VolumeSet (int *,float) ;
 float roundf (float) ;
 float var_InheritFloat (int *,char*) ;

int aout_VolumeUpdate (audio_output_t *aout, int value, float *volp)
{
    int ret = -1;
    float stepSize = var_InheritFloat (aout, "volume-step") / (float)AOUT_VOLUME_DEFAULT;
    float delta = value * stepSize;
    float vol = aout_VolumeGet (aout);

    if (vol >= 0.f)
    {
        vol += delta;
        if (vol < 0.f)
            vol = 0.f;
        if (vol > 2.f)
            vol = 2.f;
        vol = (roundf (vol / stepSize)) * stepSize;
        if (volp != ((void*)0))
            *volp = vol;
        ret = aout_VolumeSet (aout, vol);
    }
    return ret;
}
