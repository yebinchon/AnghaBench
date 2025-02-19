
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket_server {int dummy; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ open; } ;
struct request_package {TYPE_2__ u; } ;


 int open_request (struct socket_server*,struct request_package*,uintptr_t,char const*,int) ;
 int send_request (struct socket_server*,struct request_package*,char,int) ;

int
socket_server_connect(struct socket_server *ss, uintptr_t opaque, const char * addr, int port) {
 struct request_package request;
 int len = open_request(ss, &request, opaque, addr, port);
 if (len < 0)
  return -1;
 send_request(ss, &request, 'O', sizeof(request.u.open) + len);
 return request.u.open.id;
}
