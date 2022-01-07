
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
struct socket_server {int sendctrl_fd; } ;
struct request_package {void** header; } ;
typedef int ssize_t ;


 scalar_t__ EINTR ;
 int assert (int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int write (int ,void**,int) ;

__attribute__((used)) static void
send_request(struct socket_server *ss, struct request_package *request, char type, int len) {
 request->header[6] = (uint8_t)type;
 request->header[7] = (uint8_t)len;
 for (;;) {
  ssize_t n = write(ss->sendctrl_fd, &request->header[6], len+2);
  if (n<0) {
   if (errno != EINTR) {
    fprintf(stderr, "socket-server : send ctrl command error %s.\n", strerror(errno));
   }
   continue;
  }
  assert(n == len+2);
  return;
 }
}
