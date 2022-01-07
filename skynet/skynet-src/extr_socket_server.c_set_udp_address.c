
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket_server {struct socket* slot; } ;
struct socket_message {int id; char* data; scalar_t__ ud; int opaque; } ;
struct TYPE_2__ {int udp_address; } ;
struct socket {scalar_t__ type; int id; int protocol; int udpconnecting; TYPE_1__ p; int opaque; } ;
struct request_setudp {int id; int* address; } ;


 int ATOM_DEC (int *) ;
 size_t HASH_ID (int) ;
 int PROTOCOL_UDP ;
 int SOCKET_ERR ;
 scalar_t__ SOCKET_TYPE_INVALID ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static int
set_udp_address(struct socket_server *ss, struct request_setudp *request, struct socket_message *result) {
 int id = request->id;
 struct socket *s = &ss->slot[HASH_ID(id)];
 if (s->type == SOCKET_TYPE_INVALID || s->id !=id) {
  return -1;
 }
 int type = request->address[0];
 if (type != s->protocol) {

  result->opaque = s->opaque;
  result->id = s->id;
  result->ud = 0;
  result->data = "protocol mismatch";

  return SOCKET_ERR;
 }
 if (type == PROTOCOL_UDP) {
  memcpy(s->p.udp_address, request->address, 1+2+4);
 } else {
  memcpy(s->p.udp_address, request->address, 1+2+16);
 }
 ATOM_DEC(&s->udpconnecting);
 return -1;
}
