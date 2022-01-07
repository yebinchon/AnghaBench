
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sin6_addr; int sin6_port; } ;
struct TYPE_3__ {int sin_addr; int sin_port; } ;
union sockaddr_all {TYPE_2__ v6; TYPE_1__ v4; } ;
typedef scalar_t__ uint8_t ;


 int PROTOCOL_UDP ;
 int memcpy (scalar_t__*,int *,int) ;

__attribute__((used)) static int
gen_udp_address(int protocol, union sockaddr_all *sa, uint8_t * udp_address) {
 int addrsz = 1;
 udp_address[0] = (uint8_t)protocol;
 if (protocol == PROTOCOL_UDP) {
  memcpy(udp_address+addrsz, &sa->v4.sin_port, sizeof(sa->v4.sin_port));
  addrsz += sizeof(sa->v4.sin_port);
  memcpy(udp_address+addrsz, &sa->v4.sin_addr, sizeof(sa->v4.sin_addr));
  addrsz += sizeof(sa->v4.sin_addr);
 } else {
  memcpy(udp_address+addrsz, &sa->v6.sin6_port, sizeof(sa->v6.sin6_port));
  addrsz += sizeof(sa->v6.sin6_port);
  memcpy(udp_address+addrsz, &sa->v6.sin6_addr, sizeof(sa->v6.sin6_addr));
  addrsz += sizeof(sa->v6.sin6_addr);
 }
 return addrsz;
}
