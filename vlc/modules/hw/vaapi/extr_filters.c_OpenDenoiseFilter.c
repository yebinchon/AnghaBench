
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int OpenBasicFilter (int *,int ,char*,int *) ;
 int VAProcFilterNoiseReduction ;
 int vlc_denoise_sigma_range ;

__attribute__((used)) static int
OpenDenoiseFilter(vlc_object_t * obj)
{
    return OpenBasicFilter(obj, VAProcFilterNoiseReduction, "denoise-sigma",
                           &vlc_denoise_sigma_range);
}
