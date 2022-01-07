
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline bool AV1_OBUHasSizeField(const uint8_t *p_buf)
{
    return p_buf[0] & 0x02;
}
