
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint16_t ;



__attribute__((used)) static inline uint16_t rtcp_fb_nack_get_range_extra(const uint8_t *p_rtcp_fb_nack)
{
    return (p_rtcp_fb_nack[2] << 8) | p_rtcp_fb_nack[3];
}
