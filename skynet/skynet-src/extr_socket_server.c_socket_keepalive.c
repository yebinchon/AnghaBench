
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keepalive ;


 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int setsockopt (int,int ,int ,void*,int) ;

__attribute__((used)) static void
socket_keepalive(int fd) {
 int keepalive = 1;
 setsockopt(fd, SOL_SOCKET, SO_KEEPALIVE, (void *)&keepalive , sizeof(keepalive));
}
