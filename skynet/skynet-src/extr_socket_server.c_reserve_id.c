
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_server {struct socket* slot; int alloc_id; } ;
struct socket {scalar_t__ type; int id; int fd; scalar_t__ udpconnecting; int protocol; } ;


 int ATOM_AND (int *,int) ;
 scalar_t__ ATOM_CAS (scalar_t__*,scalar_t__,int ) ;
 int ATOM_INC (int *) ;
 size_t HASH_ID (int) ;
 int MAX_SOCKET ;
 int PROTOCOL_UNKNOWN ;
 scalar_t__ SOCKET_TYPE_INVALID ;
 int SOCKET_TYPE_RESERVE ;

__attribute__((used)) static int
reserve_id(struct socket_server *ss) {
 int i;
 for (i=0;i<MAX_SOCKET;i++) {
  int id = ATOM_INC(&(ss->alloc_id));
  if (id < 0) {
   id = ATOM_AND(&(ss->alloc_id), 0x7fffffff);
  }
  struct socket *s = &ss->slot[HASH_ID(id)];
  if (s->type == SOCKET_TYPE_INVALID) {
   if (ATOM_CAS(&s->type, SOCKET_TYPE_INVALID, SOCKET_TYPE_RESERVE)) {
    s->id = id;
    s->protocol = PROTOCOL_UNKNOWN;


    s->udpconnecting = 0;
    s->fd = -1;
    return id;
   } else {

    --i;
   }
  }
 }
 return -1;
}
