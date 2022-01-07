
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sn_lock; int sn_cv; int sn_type; } ;
typedef TYPE_1__ kcf_sreq_node_t ;


 int CRYPTO_SYNCH ;
 int CV_DEFAULT ;
 int MUTEX_DEFAULT ;
 int cv_init (int *,int *,int ,int *) ;
 int mutex_init (int *,int *,int ,int *) ;

__attribute__((used)) static int
kcf_sreq_cache_constructor(void *buf, void *cdrarg, int kmflags)
{
 kcf_sreq_node_t *sreq = (kcf_sreq_node_t *)buf;

 sreq->sn_type = CRYPTO_SYNCH;
 cv_init(&sreq->sn_cv, ((void*)0), CV_DEFAULT, ((void*)0));
 mutex_init(&sreq->sn_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));

 return (0);
}
