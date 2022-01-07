
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket_server {int dummy; } ;
struct TYPE_3__ {int id; uintptr_t opaque; } ;
struct TYPE_4__ {TYPE_1__ start; } ;
struct request_package {TYPE_2__ u; } ;


 int send_request (struct socket_server*,struct request_package*,char,int) ;

void
socket_server_start(struct socket_server *ss, uintptr_t opaque, int id) {
 struct request_package request;
 request.u.start.id = id;
 request.u.start.opaque = opaque;
 send_request(ss, &request, 'S', sizeof(request.u.start));
}
