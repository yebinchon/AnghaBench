
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;



__attribute__((used)) static u_short
layout_checksum(const char *layout)
{
 u_short csum;

 csum = 0;
 for (; *layout != '\0'; layout++) {
  csum = (csum >> 1) + ((csum & 1) << 15);
  csum += *layout;
 }
 return (csum);
}
