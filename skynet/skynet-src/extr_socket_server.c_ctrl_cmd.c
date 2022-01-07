
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct socket_server {int recvctrl_fd; } ;
struct socket_message {int * data; int ud; int id; int opaque; } ;
struct request_udp {int dummy; } ;
struct request_start {int dummy; } ;
struct request_setudp {int dummy; } ;
struct request_setopt {int dummy; } ;
struct request_send {int id; } ;
struct request_send_udp {int * address; struct request_send send; } ;
struct request_open {int dummy; } ;
struct request_listen {int dummy; } ;
struct request_close {int dummy; } ;
struct request_bind {int dummy; } ;
typedef int header ;


 int PRIORITY_HIGH ;
 int PRIORITY_LOW ;
 int SOCKET_EXIT ;
 int add_udp_socket (struct socket_server*,struct request_udp*) ;
 int bind_socket (struct socket_server*,struct request_bind*,struct socket_message*) ;
 int block_readpipe (int,int*,int) ;
 int close_socket (struct socket_server*,struct request_close*,struct socket_message*) ;
 int dec_sending_ref (struct socket_server*,int ) ;
 int fprintf (int ,char*,int) ;
 int listen_socket (struct socket_server*,struct request_listen*,struct socket_message*) ;
 int open_socket (struct socket_server*,struct request_open*,struct socket_message*) ;
 int send_socket (struct socket_server*,struct request_send*,struct socket_message*,int,int *) ;
 int set_udp_address (struct socket_server*,struct request_setudp*,struct socket_message*) ;
 int setopt_socket (struct socket_server*,struct request_setopt*) ;
 int start_socket (struct socket_server*,struct request_start*,struct socket_message*) ;
 int stderr ;

__attribute__((used)) static int
ctrl_cmd(struct socket_server *ss, struct socket_message *result) {
 int fd = ss->recvctrl_fd;

 uint8_t buffer[256];
 uint8_t header[2];
 block_readpipe(fd, header, sizeof(header));
 int type = header[0];
 int len = header[1];
 block_readpipe(fd, buffer, len);

 switch (type) {
 case 'S':
  return start_socket(ss,(struct request_start *)buffer, result);
 case 'B':
  return bind_socket(ss,(struct request_bind *)buffer, result);
 case 'L':
  return listen_socket(ss,(struct request_listen *)buffer, result);
 case 'K':
  return close_socket(ss,(struct request_close *)buffer, result);
 case 'O':
  return open_socket(ss, (struct request_open *)buffer, result);
 case 'X':
  result->opaque = 0;
  result->id = 0;
  result->ud = 0;
  result->data = ((void*)0);
  return SOCKET_EXIT;
 case 'D':
 case 'P': {
  int priority = (type == 'D') ? PRIORITY_HIGH : PRIORITY_LOW;
  struct request_send * request = (struct request_send *) buffer;
  int ret = send_socket(ss, request, result, priority, ((void*)0));
  dec_sending_ref(ss, request->id);
  return ret;
 }
 case 'A': {
  struct request_send_udp * rsu = (struct request_send_udp *)buffer;
  return send_socket(ss, &rsu->send, result, PRIORITY_HIGH, rsu->address);
 }
 case 'C':
  return set_udp_address(ss, (struct request_setudp *)buffer, result);
 case 'T':
  setopt_socket(ss, (struct request_setopt *)buffer);
  return -1;
 case 'U':
  add_udp_socket(ss, (struct request_udp *)buffer);
  return -1;
 default:
  fprintf(stderr, "socket-server: Unknown ctrl %c.\n",type);
  return -1;
 };

 return -1;
}
