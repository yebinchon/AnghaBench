
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int VLC_UNUSED (int const*) ;

__attribute__((used)) static bool FLACStartcodeMatcher(uint8_t i, size_t i_pos, const uint8_t *p_startcode)
{
    VLC_UNUSED(p_startcode);
    return (i_pos == 0) ? i == 0xFF : (i & 0xFE) == 0xF8;
}
