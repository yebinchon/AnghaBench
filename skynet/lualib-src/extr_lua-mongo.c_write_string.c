
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {char* ptr; int size; } ;


 int buffer_reserve (struct buffer*,size_t) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static void
write_string(struct buffer *b, const char *key, size_t sz) {
 buffer_reserve(b,sz+1);
 memcpy(b->ptr + b->size, key, sz);
 b->ptr[b->size+sz] = '\0';
 b->size+=sz+1;
}
