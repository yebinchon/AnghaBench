
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* pThread; } ;
typedef TYPE_1__ Threadset ;
struct TYPE_9__ {int iTid; int tid; struct TYPE_9__* pNext; } ;
typedef TYPE_2__ Thread ;
struct TYPE_10__ {scalar_t__ rc; } ;
typedef TYPE_3__ Error ;


 scalar_t__ SQLITE_OK ;
 int fflush (int ) ;
 int printf (char*,int,char*) ;
 int pthread_join (int ,void**) ;
 int sqlite3_free (TYPE_2__*) ;
 int stdout ;
 int system_error (TYPE_3__*,int) ;

__attribute__((used)) static void join_all_threads_x(
  Error *pErr,
  Threadset *pThreads
){
  Thread *p;
  Thread *pNext;
  for(p=pThreads->pThread; p; p=pNext){
    void *ret;
    pNext = p->pNext;
    int rc;
    rc = pthread_join(p->tid, &ret);
    if( rc!=0 ){
      if( pErr->rc==SQLITE_OK ) system_error(pErr, rc);
    }else{
      printf("Thread %d says: %s\n", p->iTid, (ret==0 ? "..." : (char *)ret));
      fflush(stdout);
    }
    sqlite3_free(p);
  }
  pThreads->pThread = 0;
}
