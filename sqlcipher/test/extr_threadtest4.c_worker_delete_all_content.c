
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nTest; int pWrMutex; int tid; } ;
typedef TYPE_1__ WorkerInfo ;


 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int run_sql (TYPE_1__*,char*,...) ;

__attribute__((used)) static void worker_delete_all_content(WorkerInfo *p, int inTrans){
  if( inTrans ){
    pthread_mutex_lock(p->pWrMutex);
    run_sql(p, "BEGIN");
    run_sql(p, "DELETE FROM t1 WHERE tid=%d", p->tid);
    run_sql(p, "DELETE FROM t2 WHERE tid=%d", p->tid);
    run_sql(p, "DELETE FROM t3 WHERE tid=%d", p->tid);
    run_sql(p, "COMMIT");
    pthread_mutex_unlock(p->pWrMutex);
    p->nTest++;
  }else{
    pthread_mutex_lock(p->pWrMutex);
    run_sql(p, "DELETE FROM t1 WHERE tid=%d", p->tid);
    pthread_mutex_unlock(p->pWrMutex);
    p->nTest++;
    pthread_mutex_lock(p->pWrMutex);
    run_sql(p, "DELETE FROM t2 WHERE tid=%d", p->tid);
    pthread_mutex_unlock(p->pWrMutex);
    p->nTest++;
    pthread_mutex_lock(p->pWrMutex);
    run_sql(p, "DELETE FROM t3 WHERE tid=%d", p->tid);
    pthread_mutex_unlock(p->pWrMutex);
    p->nTest++;
  }
}
