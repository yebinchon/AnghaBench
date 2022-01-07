
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float vlc_to_vdp_brightness(float brightness)
{
    brightness -= 1.f;
    if (brightness > +1.f)
        brightness = +1.f;
    if (brightness < -1.f)
        brightness = -1.f;
    return brightness;
}
