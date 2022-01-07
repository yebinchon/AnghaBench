
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3_int64 ;
typedef int closure_queue ;
struct TYPE_8__ {int pClosure; } ;
typedef TYPE_1__ closure_cursor ;
struct TYPE_9__ {int iGeneration; int id; } ;
typedef TYPE_2__ closure_avl ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int closureAvlInsert (int *,TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int queuePush (int *,TYPE_2__*) ;
 TYPE_2__* sqlite3_malloc (int) ;

__attribute__((used)) static int closureInsertNode(
  closure_queue *pQueue,
  closure_cursor *pCur,
  sqlite3_int64 id,
  int iGeneration
){
  closure_avl *pNew = sqlite3_malloc( sizeof(*pNew) );
  if( pNew==0 ) return SQLITE_NOMEM;
  memset(pNew, 0, sizeof(*pNew));
  pNew->id = id;
  pNew->iGeneration = iGeneration;
  closureAvlInsert(&pCur->pClosure, pNew);
  queuePush(pQueue, pNew);
  return SQLITE_OK;
}
