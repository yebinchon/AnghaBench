
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct messagepool {struct message* freelist; } ;
struct message {struct message* next; scalar_t__ size; int * buffer; } ;
struct databuffer {struct message* head; struct message* tail; } ;


 int assert (int) ;
 int skynet_free (int *) ;

__attribute__((used)) static inline void
_return_message(struct databuffer *db, struct messagepool *mp) {
 struct message *m = db->head;
 if (m->next == ((void*)0)) {
  assert(db->tail == m);
  db->head = db->tail = ((void*)0);
 } else {
  db->head = m->next;
 }
 skynet_free(m->buffer);
 m->buffer = ((void*)0);
 m->size = 0;
 m->next = mp->freelist;
 mp->freelist = m;
}
