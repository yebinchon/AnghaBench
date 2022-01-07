
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_copy {int reference; void* msg; int sz; } ;
typedef int int32_t ;


 struct stm_copy* skynet_malloc (int) ;

__attribute__((used)) static struct stm_copy *
stm_newcopy(void * msg, int32_t sz) {
 struct stm_copy * copy = skynet_malloc(sizeof(*copy));
 copy->reference = 1;
 copy->sz = sz;
 copy->msg = msg;

 return copy;
}
