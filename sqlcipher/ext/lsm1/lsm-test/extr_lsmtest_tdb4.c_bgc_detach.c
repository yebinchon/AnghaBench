
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nRef; int bDoWork; int spec; int file; int ckpter_mutex; int ckpter_cond; int ckpter_thread; struct TYPE_6__* pNext; } ;
typedef TYPE_1__ bt_ckpter ;
struct TYPE_8__ {TYPE_1__* pCkpter; } ;
struct TYPE_7__ {TYPE_1__* pCkpter; int pEnv; } ;
typedef TYPE_2__ BtDb ;


 int SQLITE4_MUTEX_STATIC_KV ;
 int SQLITE4_OK ;
 TYPE_4__ gBgc ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_join (int ,void**) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sqlite4_buffer_clear (int *) ;
 int sqlite4_mutex_alloc (int ,int ) ;
 int sqlite4_mutex_enter (int ) ;
 int sqlite4_mutex_leave (int ) ;
 int testFree (TYPE_1__*) ;

__attribute__((used)) static int bgc_detach(BtDb *pDb){
  int rc = SQLITE4_OK;
  bt_ckpter *pCkpter = pDb->pCkpter;
  if( pCkpter ){
    int bShutdown = 0;

    sqlite4_mutex_enter(sqlite4_mutex_alloc(pDb->pEnv,SQLITE4_MUTEX_STATIC_KV));
    pCkpter->nRef--;
    if( pCkpter->nRef==0 ){
      bt_ckpter **pp;

      *pp = pCkpter->pNext;
      for(pp=&gBgc.pCkpter; *pp!=pCkpter; pp=&((*pp)->pNext));
      bShutdown = 1;
    }
    sqlite4_mutex_leave(sqlite4_mutex_alloc(pDb->pEnv,SQLITE4_MUTEX_STATIC_KV));

    if( bShutdown ){
      void *pDummy;


      pthread_mutex_lock(&pCkpter->ckpter_mutex);
      pCkpter->bDoWork = 1;
      pthread_cond_signal(&pCkpter->ckpter_cond);
      pthread_mutex_unlock(&pCkpter->ckpter_mutex);


      pthread_join(pCkpter->ckpter_thread, &pDummy);
      pthread_cond_destroy(&pCkpter->ckpter_cond);
      pthread_mutex_destroy(&pCkpter->ckpter_mutex);

      sqlite4_buffer_clear(&pCkpter->file);
      sqlite4_buffer_clear(&pCkpter->spec);
      testFree(pCkpter);
    }

    pDb->pCkpter = 0;
  }
  return rc;
}
