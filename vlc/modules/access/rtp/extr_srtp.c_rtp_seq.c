
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint16_t ;



__attribute__((used)) static inline uint16_t rtp_seq (const uint8_t *buf)
{
    return (buf[2] << 8) | buf[3];
}
