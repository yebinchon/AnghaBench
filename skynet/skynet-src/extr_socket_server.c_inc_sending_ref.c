
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct socket {scalar_t__ protocol; int sending; } ;


 scalar_t__ ATOM_CAS (int*,int,int) ;
 int ID_TAG16 (int) ;
 scalar_t__ PROTOCOL_TCP ;

__attribute__((used)) static inline void
inc_sending_ref(struct socket *s, int id) {
 if (s->protocol != PROTOCOL_TCP)
  return;
 for (;;) {
  uint32_t sending = s->sending;
  if ((sending >> 16) == ID_TAG16(id)) {
   if ((sending & 0xffff) == 0xffff) {

    continue;
   }

   if (ATOM_CAS(&s->sending, sending, sending + 1))
    return;

  } else {

   return;
  }
 }
}
