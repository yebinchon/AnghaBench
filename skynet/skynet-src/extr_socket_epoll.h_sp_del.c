
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPOLL_CTL_DEL ;
 int epoll_ctl (int,int ,int,int *) ;

__attribute__((used)) static void
sp_del(int efd, int sock) {
 epoll_ctl(efd, EPOLL_CTL_DEL, sock , ((void*)0));
}
