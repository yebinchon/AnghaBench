
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t
mpt_compute_checksum(void *base, size_t len)
{
 uint8_t *bytes;
 uint8_t sum;

 for(bytes = base, sum = 0; len > 0; len--) {
  sum += *bytes++;
 }

 return ((uint8_t) (256 - sum));
}
