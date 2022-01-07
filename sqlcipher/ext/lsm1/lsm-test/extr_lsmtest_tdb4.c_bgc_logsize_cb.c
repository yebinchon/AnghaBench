
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nLogsize; int bDoWork; int ckpter_mutex; int ckpter_cond; } ;
typedef TYPE_1__ bt_ckpter ;


 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void bgc_logsize_cb(void *pCtx, int nLogsize){
  bt_ckpter *p = (bt_ckpter*)pCtx;
  if( nLogsize>=p->nLogsize ){
    pthread_mutex_lock(&p->ckpter_mutex);
    p->bDoWork = 1;
    pthread_cond_signal(&p->ckpter_cond);
    pthread_mutex_unlock(&p->ckpter_mutex);
  }
}
