
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float vlc_to_vdp_contrast(float contrast)
{
    if (contrast > 10.f)
        contrast = 10.f;
    if (contrast < 0.f)
        contrast = 0.f;
    return contrast;
}
