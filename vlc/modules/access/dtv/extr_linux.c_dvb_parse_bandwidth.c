
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t dvb_parse_bandwidth (uint32_t i)
{
    switch (i)
    {

        case 2: return 1712000;
        default: return i * 1000000;
    }
}
