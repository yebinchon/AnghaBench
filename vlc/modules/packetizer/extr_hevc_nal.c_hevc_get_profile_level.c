
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_extra; scalar_t__ p_extra; } ;
typedef TYPE_1__ es_format_t ;



bool hevc_get_profile_level(const es_format_t *p_fmt, uint8_t *pi_profile,
                            uint8_t *pi_level, uint8_t *pi_nal_length_size)
{
    const uint8_t *p = (const uint8_t*)p_fmt->p_extra;
    if(p_fmt->i_extra < 23 || p[0] != 1)
        return 0;


    if(pi_profile)
        *pi_profile = p[1] & 0x1F;

    if(pi_level)
        *pi_level = p[12];

    if (pi_nal_length_size)
        *pi_nal_length_size = 1 + (p[21]&0x03);

    return 1;
}
