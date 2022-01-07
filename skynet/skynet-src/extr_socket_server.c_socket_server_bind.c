
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket_server {int dummy; } ;
struct TYPE_3__ {uintptr_t opaque; int id; int fd; } ;
struct TYPE_4__ {TYPE_1__ bind; } ;
struct request_package {TYPE_2__ u; } ;


 int reserve_id (struct socket_server*) ;
 int send_request (struct socket_server*,struct request_package*,char,int) ;

int
socket_server_bind(struct socket_server *ss, uintptr_t opaque, int fd) {
 struct request_package request;
 int id = reserve_id(ss);
 if (id < 0)
  return -1;
 request.u.bind.opaque = opaque;
 request.u.bind.id = id;
 request.u.bind.fd = fd;
 send_request(ss, &request, 'B', sizeof(request.u.bind));
 return id;
}
