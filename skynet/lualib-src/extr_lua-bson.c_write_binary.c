
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {scalar_t__ size; scalar_t__ ptr; } ;


 int bson_reserve (struct bson*,size_t) ;
 int memcpy (scalar_t__,void const*,size_t) ;
 int reserve_length (struct bson*) ;
 int write_length (struct bson*,size_t,int) ;

__attribute__((used)) static void
write_binary(struct bson *b, const void * buffer, size_t sz) {
 int length = reserve_length(b);
 bson_reserve(b,sz);
 memcpy(b->ptr + b->size, buffer, sz);
 b->size+=sz;
 write_length(b, sz-1, length);
}
