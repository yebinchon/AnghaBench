
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {scalar_t__ ptr; scalar_t__ buffer; } ;


 int free (scalar_t__) ;

__attribute__((used)) static inline void
bson_destroy(struct bson *b) {
 if (b->ptr != b->buffer) {
  free(b->ptr);
 }
}
