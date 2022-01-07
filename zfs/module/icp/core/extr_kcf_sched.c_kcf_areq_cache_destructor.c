
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ an_refcnt; int an_turn_cv; int an_done; int an_lock; } ;
typedef TYPE_1__ kcf_areq_node_t ;


 int ASSERT (int) ;
 int cv_destroy (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
kcf_areq_cache_destructor(void *buf, void *cdrarg)
{
 kcf_areq_node_t *areq = (kcf_areq_node_t *)buf;

 ASSERT(areq->an_refcnt == 0);
 mutex_destroy(&areq->an_lock);
 cv_destroy(&areq->an_done);
 cv_destroy(&areq->an_turn_cv);
}
