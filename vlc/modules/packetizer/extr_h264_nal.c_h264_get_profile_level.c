
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_extra; scalar_t__ p_extra; } ;
typedef TYPE_1__ es_format_t ;



bool h264_get_profile_level(const es_format_t *p_fmt, uint8_t *pi_profile,
                            uint8_t *pi_level, uint8_t *pi_nal_length_size)
{
    uint8_t *p = (uint8_t*)p_fmt->p_extra;
    if(p_fmt->i_extra < 8)
        return 0;


    if (p[0] == 1 && p_fmt->i_extra >= 12)
    {
        if (pi_nal_length_size)
            *pi_nal_length_size = 1 + (p[4]&0x03);
        p += 8;
    }
    else if(!p[0] && !p[1])
    {
        if (!p[2] && p[3] == 1)
            p += 4;
        else if (p[2] == 1)
            p += 3;
        else
            return 0;
    }
    else return 0;

    if ( ((*p++)&0x1f) != 7) return 0;

    if (pi_profile)
        *pi_profile = p[0];

    if (pi_level)
        *pi_level = p[2];

    return 1;
}
