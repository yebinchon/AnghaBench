
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int iMaxTid; TYPE_2__* pThread; } ;
typedef TYPE_1__ Threadset ;
struct TYPE_10__ {int iTid; char* (* xProc ) (int,void*) ;struct TYPE_10__* pNext; int tid; void* pArg; } ;
typedef TYPE_2__ Thread ;
struct TYPE_11__ {scalar_t__ rc; } ;
typedef TYPE_3__ Error ;


 scalar_t__ SQLITE_OK ;
 int launch_thread_main ;
 int memset (TYPE_2__*,int ,int) ;
 int pthread_create (int *,int *,int ,void*) ;
 int sqlite3_free (TYPE_2__*) ;
 scalar_t__ sqlite3_malloc (int) ;
 int system_error (TYPE_3__*,int) ;

__attribute__((used)) static void launch_thread_x(
  Error *pErr,
  Threadset *pThreads,
  char *(*xProc)(int, void*),
  void *pArg
){
  if( pErr->rc==SQLITE_OK ){
    int iTid = ++pThreads->iMaxTid;
    Thread *p;
    int rc;

    p = (Thread *)sqlite3_malloc(sizeof(Thread));
    memset(p, 0, sizeof(Thread));
    p->iTid = iTid;
    p->pArg = pArg;
    p->xProc = xProc;

    rc = pthread_create(&p->tid, ((void*)0), launch_thread_main, (void *)p);
    if( rc!=0 ){
      system_error(pErr, rc);
      sqlite3_free(p);
    }else{
      p->pNext = pThreads->pThread;
      pThreads->pThread = p;
    }
  }
}
