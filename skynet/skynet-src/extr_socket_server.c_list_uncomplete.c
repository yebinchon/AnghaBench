
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_buffer {void* buffer; scalar_t__ ptr; } ;
struct wb_list {struct write_buffer* head; } ;



__attribute__((used)) static inline int
list_uncomplete(struct wb_list *s) {
 struct write_buffer *wb = s->head;
 if (wb == ((void*)0))
  return 0;

 return (void *)wb->ptr != wb->buffer;
}
