
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline void lba_to_msf(uint8_t *buf, int lba)
{
 lba += 150;
 buf[0] = (uint8_t) ((lba / 75) / 60);
 buf[1] = (lba / 75) % 60;
 buf[2] = lba % 75;
}
