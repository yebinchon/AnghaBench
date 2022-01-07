
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct buffer {int* ptr; } ;
typedef int int32_t ;



__attribute__((used)) static inline void
write_length(struct buffer *b, int32_t v, int off) {
 uint32_t uv = (uint32_t)v;
 b->ptr[off++] = uv & 0xff;
 b->ptr[off++] = (uv >> 8)&0xff;
 b->ptr[off++] = (uv >> 16)&0xff;
 b->ptr[off++] = (uv >> 24)&0xff;
}
