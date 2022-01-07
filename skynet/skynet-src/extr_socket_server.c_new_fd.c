
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket_server {int event_fd; struct socket* slot; } ;
struct TYPE_2__ {int size; } ;
struct socket {scalar_t__ type; int id; int fd; int sending; int protocol; uintptr_t opaque; int stat; scalar_t__ dw_size; int * dw_buffer; int low; int high; scalar_t__ warn_size; scalar_t__ wb_size; TYPE_1__ p; } ;


 size_t HASH_ID (int) ;
 int ID_TAG16 (int) ;
 int MIN_READ_BUFFER ;
 scalar_t__ SOCKET_TYPE_INVALID ;
 scalar_t__ SOCKET_TYPE_RESERVE ;
 int assert (int) ;
 int check_wb_list (int *) ;
 int memset (int *,int ,int) ;
 scalar_t__ sp_add (int ,int,struct socket*) ;

__attribute__((used)) static struct socket *
new_fd(struct socket_server *ss, int id, int fd, int protocol, uintptr_t opaque, bool add) {
 struct socket * s = &ss->slot[HASH_ID(id)];
 assert(s->type == SOCKET_TYPE_RESERVE);

 if (add) {
  if (sp_add(ss->event_fd, fd, s)) {
   s->type = SOCKET_TYPE_INVALID;
   return ((void*)0);
  }
 }

 s->id = id;
 s->fd = fd;
 s->sending = ID_TAG16(id) << 16 | 0;
 s->protocol = protocol;
 s->p.size = MIN_READ_BUFFER;
 s->opaque = opaque;
 s->wb_size = 0;
 s->warn_size = 0;
 check_wb_list(&s->high);
 check_wb_list(&s->low);
 s->dw_buffer = ((void*)0);
 s->dw_size = 0;
 memset(&s->stat, 0, sizeof(s->stat));
 return s;
}
