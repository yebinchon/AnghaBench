
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pQueueFirst; int nFile; TYPE_2__* pQueueLast; } ;
struct TYPE_6__ {size_t op; int iOffset; TYPE_1__* pFileData; struct TYPE_6__* pNext; } ;
struct TYPE_5__ {char* zName; } ;
typedef TYPE_2__ AsyncWrite ;


 size_t ASYNC_CLOSE ;
 int ASYNC_COND_QUEUE ;
 int ASYNC_MUTEX_QUEUE ;
 int ASYNC_TRACE (char*) ;
 size_t ASYNC_UNLOCK ;
 int assert (int) ;
 TYPE_3__ async ;
 int async_cond_signal (int ) ;
 int async_mutex_enter (int ) ;
 int async_mutex_leave (int ) ;
 int * azOpcodeName ;

__attribute__((used)) static void addAsyncWrite(AsyncWrite *pWrite){

  if( pWrite->op!=ASYNC_UNLOCK ){
    async_mutex_enter(ASYNC_MUTEX_QUEUE);
  }


  assert( !pWrite->pNext );
  if( async.pQueueLast ){
    assert( async.pQueueFirst );
    async.pQueueLast->pNext = pWrite;
  }else{
    async.pQueueFirst = pWrite;
  }
  async.pQueueLast = pWrite;
  ASYNC_TRACE(("PUSH %p (%s %s %d)\n", pWrite, azOpcodeName[pWrite->op],
         pWrite->pFileData ? pWrite->pFileData->zName : "-", pWrite->iOffset));

  if( pWrite->op==ASYNC_CLOSE ){
    async.nFile--;
  }



  async_cond_signal(ASYNC_COND_QUEUE);


  if( pWrite->op!=ASYNC_UNLOCK ){
    async_mutex_leave(ASYNC_MUTEX_QUEUE);
  }
}
