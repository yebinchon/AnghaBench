
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ pnBytesFreed; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_17__ {TYPE_7__* pSchema; TYPE_5__* pFKey; } ;
typedef TYPE_4__ Table ;
struct TYPE_19__ {int fkeyHash; } ;
struct TYPE_18__ {char* zTo; int isDeferred; struct TYPE_18__* pNextFrom; int * apTrigger; TYPE_2__* pPrevTo; TYPE_1__* pNextTo; } ;
struct TYPE_15__ {TYPE_1__* pNextTo; } ;
struct TYPE_14__ {char* zTo; TYPE_2__* pPrevTo; } ;
typedef TYPE_5__ FKey ;


 scalar_t__ IsVirtual (TYPE_4__*) ;
 int assert (int) ;
 int fkTriggerDelete (TYPE_3__*,int ) ;
 int sqlite3DbFree (TYPE_3__*,TYPE_5__*) ;
 int sqlite3HashInsert (int *,char const*,void*) ;
 scalar_t__ sqlite3SchemaMutexHeld (TYPE_3__*,int ,TYPE_7__*) ;

void sqlite3FkDelete(sqlite3 *db, Table *pTab){
  FKey *pFKey;
  FKey *pNext;

  assert( db==0 || IsVirtual(pTab)
         || sqlite3SchemaMutexHeld(db, 0, pTab->pSchema) );
  for(pFKey=pTab->pFKey; pFKey; pFKey=pNext){


    if( !db || db->pnBytesFreed==0 ){
      if( pFKey->pPrevTo ){
        pFKey->pPrevTo->pNextTo = pFKey->pNextTo;
      }else{
        void *p = (void *)pFKey->pNextTo;
        const char *z = (p ? pFKey->pNextTo->zTo : pFKey->zTo);
        sqlite3HashInsert(&pTab->pSchema->fkeyHash, z, p);
      }
      if( pFKey->pNextTo ){
        pFKey->pNextTo->pPrevTo = pFKey->pPrevTo;
      }
    }




    assert( pFKey->isDeferred==0 || pFKey->isDeferred==1 );



    fkTriggerDelete(db, pFKey->apTrigger[0]);
    fkTriggerDelete(db, pFKey->apTrigger[1]);


    pNext = pFKey->pNextFrom;
    sqlite3DbFree(db, pFKey);
  }
}
