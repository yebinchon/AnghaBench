
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_9__ {scalar_t__ pPayload; scalar_t__ nLocal; scalar_t__ nPayload; int nKey; scalar_t__ nSize; } ;
struct TYPE_8__ {scalar_t__ leaf; int childPtrSize; TYPE_1__* pBt; } ;
struct TYPE_7__ {int mutex; } ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ CellInfo ;


 int UNUSED_PARAMETER (TYPE_2__*) ;
 int assert (int) ;
 scalar_t__ getVarint (int *,int *) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static void btreeParseCellPtrNoPayload(
  MemPage *pPage,
  u8 *pCell,
  CellInfo *pInfo
){
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  assert( pPage->leaf==0 );
  assert( pPage->childPtrSize==4 );

  UNUSED_PARAMETER(pPage);

  pInfo->nSize = 4 + getVarint(&pCell[4], (u64*)&pInfo->nKey);
  pInfo->nPayload = 0;
  pInfo->nLocal = 0;
  pInfo->pPayload = 0;
  return;
}
