
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_server {int dummy; } ;
struct request_package {int dummy; } ;


 int send_request (struct socket_server*,struct request_package*,char,int ) ;

void
socket_server_exit(struct socket_server *ss) {
 struct request_package request;
 send_request(ss, &request, 'X', 0);
}
