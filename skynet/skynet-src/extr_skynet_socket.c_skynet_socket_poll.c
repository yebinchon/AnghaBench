
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_server {int dummy; } ;
struct socket_message {int dummy; } ;


 int SKYNET_SOCKET_TYPE_ACCEPT ;
 int SKYNET_SOCKET_TYPE_CLOSE ;
 int SKYNET_SOCKET_TYPE_CONNECT ;
 int SKYNET_SOCKET_TYPE_DATA ;
 int SKYNET_SOCKET_TYPE_ERROR ;
 int SKYNET_SOCKET_TYPE_UDP ;
 int SKYNET_SOCKET_TYPE_WARNING ;






 struct socket_server* SOCKET_SERVER ;


 int assert (struct socket_server*) ;
 int forward_message (int ,int,struct socket_message*) ;
 int skynet_error (int *,char*,int) ;
 int socket_server_poll (struct socket_server*,struct socket_message*,int*) ;

int
skynet_socket_poll() {
 struct socket_server *ss = SOCKET_SERVER;
 assert(ss);
 struct socket_message result;
 int more = 1;
 int type = socket_server_poll(ss, &result, &more);
 switch (type) {
 case 131:
  return 0;
 case 133:
  forward_message(SKYNET_SOCKET_TYPE_DATA, 0, &result);
  break;
 case 134:
  forward_message(SKYNET_SOCKET_TYPE_CLOSE, 0, &result);
  break;
 case 130:
  forward_message(SKYNET_SOCKET_TYPE_CONNECT, 1, &result);
  break;
 case 132:
  forward_message(SKYNET_SOCKET_TYPE_ERROR, 1, &result);
  break;
 case 135:
  forward_message(SKYNET_SOCKET_TYPE_ACCEPT, 1, &result);
  break;
 case 129:
  forward_message(SKYNET_SOCKET_TYPE_UDP, 0, &result);
  break;
 case 128:
  forward_message(SKYNET_SOCKET_TYPE_WARNING, 0, &result);
  break;
 default:
  skynet_error(((void*)0), "Unknown socket message type %d.",type);
  return -1;
 }
 if (more) {
  return -1;
 }
 return 1;
}
