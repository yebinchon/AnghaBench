
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {scalar_t__ ptr; scalar_t__ buffer; } ;


 int skynet_free (scalar_t__) ;

__attribute__((used)) static inline void
buffer_destroy(struct buffer *b) {
 if (b->ptr != b->buffer) {
  skynet_free(b->ptr);
 }
}
