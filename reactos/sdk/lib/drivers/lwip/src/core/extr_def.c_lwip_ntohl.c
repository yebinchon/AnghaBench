
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;


 int lwip_htonl (int ) ;

u32_t
lwip_ntohl(u32_t n)
{
  return lwip_htonl(n);
}
