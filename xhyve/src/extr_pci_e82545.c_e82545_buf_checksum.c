
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int e82545_carry (int ) ;
 scalar_t__ htons (int) ;
 scalar_t__ read_uint16_unaligned (int*) ;

__attribute__((used)) static uint16_t
e82545_buf_checksum(uint8_t *buf, int len)
{
 int i, limit;
 uint32_t sum = 0;


    limit = len - (len & 1);
 for (i = 0; i < limit; i += 2)
  sum += read_uint16_unaligned(buf + i);






 if (i < len)
  sum += htons(buf[i] << 8);

 return (e82545_carry(sum));
}
