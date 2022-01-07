
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int ChannelConfigurationToVLC(uint8_t i_channel)
{
    if (i_channel == 7)
        i_channel = 8;
    else if (i_channel >= 8)
        i_channel = -1;
    return i_channel;
}
