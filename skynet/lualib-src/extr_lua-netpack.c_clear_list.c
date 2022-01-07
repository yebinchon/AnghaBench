
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* buffer; } ;
struct uncomplete {struct uncomplete* next; TYPE_1__ pack; } ;


 int skynet_free (void*) ;

__attribute__((used)) static void
clear_list(struct uncomplete * uc) {
 while (uc) {
  skynet_free(uc->pack.buffer);
  void * tmp = uc;
  uc = uc->next;
  skynet_free(tmp);
 }
}
