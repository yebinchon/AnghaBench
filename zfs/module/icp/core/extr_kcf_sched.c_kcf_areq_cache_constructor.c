
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int an_turn_cv; int an_done; int an_lock; scalar_t__ an_refcnt; int an_type; } ;
typedef TYPE_1__ kcf_areq_node_t ;


 int CRYPTO_ASYNCH ;
 int CV_DEFAULT ;
 int MUTEX_DEFAULT ;
 int cv_init (int *,int *,int ,int *) ;
 int mutex_init (int *,int *,int ,int *) ;

__attribute__((used)) static int
kcf_areq_cache_constructor(void *buf, void *cdrarg, int kmflags)
{
 kcf_areq_node_t *areq = (kcf_areq_node_t *)buf;

 areq->an_type = CRYPTO_ASYNCH;
 areq->an_refcnt = 0;
 mutex_init(&areq->an_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 cv_init(&areq->an_done, ((void*)0), CV_DEFAULT, ((void*)0));
 cv_init(&areq->an_turn_cv, ((void*)0), CV_DEFAULT, ((void*)0));

 return (0);
}
