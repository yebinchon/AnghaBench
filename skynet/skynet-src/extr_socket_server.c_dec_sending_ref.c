
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_server {struct socket* slot; } ;
struct socket {int id; scalar_t__ protocol; int sending; } ;


 int ATOM_DEC (int*) ;
 size_t HASH_ID (int) ;
 scalar_t__ PROTOCOL_TCP ;
 int assert (int) ;

__attribute__((used)) static inline void
dec_sending_ref(struct socket_server *ss, int id) {
 struct socket * s = &ss->slot[HASH_ID(id)];

 if (s->id == id && s->protocol == PROTOCOL_TCP) {
  assert((s->sending & 0xffff) != 0);
  ATOM_DEC(&s->sending);
 }
}
