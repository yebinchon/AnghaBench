
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_buffer {char* ptr; struct write_buffer* next; int buffer; int sz; int userobject; } ;
struct wb_list {struct write_buffer* tail; struct write_buffer* head; } ;
struct socket_server {int dummy; } ;
struct send_object {int sz; scalar_t__ buffer; } ;
struct request_send {int buffer; int sz; } ;


 struct write_buffer* MALLOC (int) ;
 int assert (int ) ;
 int send_object_init (struct socket_server*,struct send_object*,int ,int ) ;

__attribute__((used)) static struct write_buffer *
append_sendbuffer_(struct socket_server *ss, struct wb_list *s, struct request_send * request, int size) {
 struct write_buffer * buf = MALLOC(size);
 struct send_object so;
 buf->userobject = send_object_init(ss, &so, request->buffer, request->sz);
 buf->ptr = (char*)so.buffer;
 buf->sz = so.sz;
 buf->buffer = request->buffer;
 buf->next = ((void*)0);
 if (s->head == ((void*)0)) {
  s->head = s->tail = buf;
 } else {
  assert(s->tail != ((void*)0));
  assert(s->tail->next == ((void*)0));
  s->tail->next = buf;
  s->tail = buf;
 }
 return buf;
}
