
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HDR_CMPMASK ;
 scalar_t__ header_mono (unsigned long) ;

__attribute__((used)) static int head_compatible(unsigned long fred, unsigned long bret)
{
 return ( (fred & HDR_CMPMASK) == (bret & HDR_CMPMASK)
  && header_mono(fred) == header_mono(bret) );
}
