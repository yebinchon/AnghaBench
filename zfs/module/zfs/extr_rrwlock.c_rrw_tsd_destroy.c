
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rn_rrl; } ;
typedef TYPE_1__ rrw_node_t ;


 scalar_t__ curthread ;
 int panic (char*,void*,void*) ;

void
rrw_tsd_destroy(void *arg)
{
 rrw_node_t *rn = arg;
 if (rn != ((void*)0)) {
  panic("thread %p terminating with rrw lock %p held",
      (void *)curthread, (void *)rn->rn_rrl);
 }
}
