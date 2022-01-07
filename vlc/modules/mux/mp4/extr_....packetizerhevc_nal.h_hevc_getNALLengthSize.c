
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline uint8_t hevc_getNALLengthSize( const uint8_t *p_hvcC )
{
    return (p_hvcC[21] & 0x03) + 1;
}
