
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct tgl_message* last; } ;
typedef TYPE_1__ tgl_peer_t ;
struct tgl_message {int flags; struct tgl_message* next; } ;


 int TGLMF_OUT ;
 int complete_spec_message_answer (struct tgl_message*,int,char const*,int,char**) ;

int complete_message_answer (tgl_peer_t *P, int index, const char *text, int len, char **R) {
  struct tgl_message *M = P->last;
  while (M && (M->flags & TGLMF_OUT)) {
    M = M->next;
  }


  return complete_spec_message_answer (M, index, text, len, R);
}
