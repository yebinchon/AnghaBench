
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
typedef int u16_t ;


 int chksum (void*,int) ;

u16_t
inet_chksum(void *dataptr, u16_t len)
{
  u32_t acc, sum;

  acc = chksum(dataptr, len);
  sum = (acc & 0xffff) + (acc >> 16);
  sum += (sum >> 16);
  return ~(sum & 0xffff);
}
