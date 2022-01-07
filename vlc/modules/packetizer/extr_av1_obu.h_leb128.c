
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint64_t ;



__attribute__((used)) static inline uint64_t leb128(const uint8_t *p_buf, size_t i_buf, uint8_t *pi_len)
{
    uint64_t i_val = 0;
    *pi_len = 0;
    for(size_t i=0; i<8; i++)
    {
        if(i >= i_buf)
            break;
        i_val |= ((uint64_t)(p_buf[i] & 0x7F) << (i * 7));
        if((p_buf[i] & 0x80) == 0)
        {
            *pi_len = i + 1;
            break;
        }
    }
    return *pi_len ? i_val : 0;
}
