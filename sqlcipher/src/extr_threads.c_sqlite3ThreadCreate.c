
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ bCoreMutex; } ;
struct TYPE_6__ {void* (* xTask ) (void*) ;int done; void* pOut; int tid; void* pIn; } ;
typedef TYPE_1__ SQLiteThread ;


 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int pthread_create (int *,int ,void* (*) (void*),void*) ;
 scalar_t__ sqlite3FaultSim (int) ;
 TYPE_4__ sqlite3GlobalConfig ;
 TYPE_1__* sqlite3Malloc (int) ;

int sqlite3ThreadCreate(
  SQLiteThread **ppThread,
  void *(*xTask)(void*),
  void *pIn
){
  SQLiteThread *p;
  int rc;

  assert( ppThread!=0 );
  assert( xTask!=0 );

  assert( sqlite3GlobalConfig.bCoreMutex!=0 );

  *ppThread = 0;
  p = sqlite3Malloc(sizeof(*p));
  if( p==0 ) return SQLITE_NOMEM_BKPT;
  memset(p, 0, sizeof(*p));
  p->xTask = xTask;
  p->pIn = pIn;




  if( sqlite3FaultSim(200) ){
    rc = 1;
  }else{
    rc = pthread_create(&p->tid, 0, xTask, pIn);
  }
  if( rc ){
    p->done = 1;
    p->pOut = xTask(pIn);
  }
  *ppThread = p;
  return SQLITE_OK;
}
