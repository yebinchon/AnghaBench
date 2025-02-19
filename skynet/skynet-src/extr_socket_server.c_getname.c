
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sa_family; } ;
struct TYPE_5__ {int sin6_port; int sin6_addr; } ;
struct TYPE_4__ {int sin_port; int sin_addr; } ;
union sockaddr_all {TYPE_3__ s; TYPE_2__ v6; TYPE_1__ v4; } ;
typedef int tmp ;


 scalar_t__ AF_INET ;
 int INET6_ADDRSTRLEN ;
 scalar_t__ inet_ntop (scalar_t__,void*,char*,int) ;
 int ntohs (int ) ;
 int snprintf (char*,size_t,char*,char*,int) ;

__attribute__((used)) static int
getname(union sockaddr_all *u, char *buffer, size_t sz) {
 char tmp[INET6_ADDRSTRLEN];
 void * sin_addr = (u->s.sa_family == AF_INET) ? (void*)&u->v4.sin_addr : (void *)&u->v6.sin6_addr;
 int sin_port = ntohs((u->s.sa_family == AF_INET) ? u->v4.sin_port : u->v6.sin6_port);
 if (inet_ntop(u->s.sa_family, sin_addr, tmp, sizeof(tmp))) {
  snprintf(buffer, sz, "%s:%d", tmp, sin_port);
  return 1;
 } else {
  buffer[0] = '\0';
  return 0;
 }
}
