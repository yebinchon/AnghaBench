
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sn_cv; int sn_lock; } ;
typedef TYPE_1__ kcf_sreq_node_t ;


 int cv_destroy (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
kcf_sreq_cache_destructor(void *buf, void *cdrarg)
{
 kcf_sreq_node_t *sreq = (kcf_sreq_node_t *)buf;

 mutex_destroy(&sreq->sn_lock);
 cv_destroy(&sreq->sn_cv);
}
