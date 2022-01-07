
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float vlc_to_vdp_sigma(float sigma)
{
    sigma /= 2.f;
    if (sigma > +1.f)
        sigma = +1.f;
    if (sigma < -1.f)
        sigma = -1.f;
    return sigma;
}
