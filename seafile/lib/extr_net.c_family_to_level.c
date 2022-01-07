
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;

int
family_to_level(int family)
{
 switch (family) {
 case 129:
  return IPPROTO_IP;




 default:
  return -1;
 }
}
