
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {scalar_t__ size; scalar_t__ ptr; } ;


 int buffer_reserve (struct buffer*,int) ;
 int memcpy (scalar_t__,void const*,int) ;

__attribute__((used)) static inline void
write_bytes(struct buffer *b, const void * buf, int sz) {
 buffer_reserve(b,sz);
 memcpy(b->ptr + b->size, buf, sz);
 b->size += sz;
}
