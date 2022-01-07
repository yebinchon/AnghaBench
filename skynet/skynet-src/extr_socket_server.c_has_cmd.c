
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_1; int member_0; } ;
struct socket_server {int rfds; scalar_t__ recvctrl_fd; } ;


 int FD_SET (scalar_t__,int *) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int
has_cmd(struct socket_server *ss) {
 struct timeval tv = {0,0};
 int retval;

 FD_SET(ss->recvctrl_fd, &ss->rfds);

 retval = select(ss->recvctrl_fd+1, &ss->rfds, ((void*)0), ((void*)0), &tv);
 if (retval == 1) {
  return 1;
 }
 return 0;
}
