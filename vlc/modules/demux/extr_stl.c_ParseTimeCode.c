
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int uint8_t ;


 int CLOCK_FREQ ;

__attribute__((used)) static vlc_tick_t ParseTimeCode(uint8_t *data, double fps)
{
    return CLOCK_FREQ * (data[0] * 3600 +
                         data[1] * 60 +
                         data[2] * 1 +
                         data[3] / fps);
}
