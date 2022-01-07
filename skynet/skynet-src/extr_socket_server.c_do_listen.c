
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_TCP ;
 int close (int) ;
 int do_bind (char const*,int,int ,int*) ;
 int listen (int,int) ;

__attribute__((used)) static int
do_listen(const char * host, int port, int backlog) {
 int family = 0;
 int listen_fd = do_bind(host, port, IPPROTO_TCP, &family);
 if (listen_fd < 0) {
  return -1;
 }
 if (listen(listen_fd, backlog) == -1) {
  close(listen_fd);
  return -1;
 }
 return listen_fd;
}
