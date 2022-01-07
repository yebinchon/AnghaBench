
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nTest; int pWrMutex; int tid; } ;
typedef TYPE_1__ WorkerInfo ;


 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int run_sql (TYPE_1__*,char*,int,int,char*,int ) ;

__attribute__((used)) static void worker_add_content(WorkerInfo *p, int mn, int mx, int iTab){
  char *zTabDef;
  switch( iTab ){
    case 1: zTabDef = "t1(tid,sp,a,b,c)"; break;
    case 2: zTabDef = "t2(tid,sp,d,e,f)"; break;
    case 3: zTabDef = "t3(tid,sp,x,y,z)"; break;
  }
  pthread_mutex_lock(p->pWrMutex);
  run_sql(p,
     "WITH RECURSIVE\n"
     " c(i) AS (VALUES(%d) UNION ALL SELECT i+1 FROM c WHERE i<%d)\n"
     "INSERT INTO %s SELECT %d, zeroblob(3000), i, printf('%%d',i), i FROM c;",
     mn, mx, zTabDef, p->tid
  );
  pthread_mutex_unlock(p->pWrMutex);
  p->nTest++;
}
