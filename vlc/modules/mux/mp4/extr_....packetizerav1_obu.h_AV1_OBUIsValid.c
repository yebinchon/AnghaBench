
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline bool AV1_OBUIsValid(const uint8_t *p_buf, size_t i_buf)
{
    return (i_buf > 0 && (p_buf[0] & 0x81) == 0);
}
