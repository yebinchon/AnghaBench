
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t (* size ) (void const*) ;int free; void const* (* buffer ) (void const*) ;} ;
struct socket_server {TYPE_1__ soi; } ;
struct send_object {size_t sz; int free_func; void const* buffer; } ;


 int FREE ;
 size_t USEROBJECT ;
 void const* stub1 (void const*) ;
 size_t stub2 (void const*) ;

__attribute__((used)) static inline bool
send_object_init(struct socket_server *ss, struct send_object *so, const void *object, size_t sz) {
 if (sz == USEROBJECT) {
  so->buffer = ss->soi.buffer(object);
  so->sz = ss->soi.size(object);
  so->free_func = ss->soi.free;
  return 1;
 } else {
  so->buffer = object;
  so->sz = sz;
  so->free_func = FREE;
  return 0;
 }
}
