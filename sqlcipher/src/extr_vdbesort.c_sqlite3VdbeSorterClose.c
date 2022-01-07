
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_8__ {int aMemory; } ;
struct TYPE_10__ {TYPE_1__ list; } ;
typedef TYPE_3__ VdbeSorter ;
struct TYPE_9__ {TYPE_3__* pSorter; } ;
struct TYPE_11__ {scalar_t__ eCurType; TYPE_2__ uc; } ;
typedef TYPE_4__ VdbeCursor ;


 scalar_t__ CURTYPE_SORTER ;
 int assert (int) ;
 int sqlite3DbFree (int *,TYPE_3__*) ;
 int sqlite3VdbeSorterReset (int *,TYPE_3__*) ;
 int sqlite3_free (int ) ;

void sqlite3VdbeSorterClose(sqlite3 *db, VdbeCursor *pCsr){
  VdbeSorter *pSorter;
  assert( pCsr->eCurType==CURTYPE_SORTER );
  pSorter = pCsr->uc.pSorter;
  if( pSorter ){
    sqlite3VdbeSorterReset(db, pSorter);
    sqlite3_free(pSorter->list.aMemory);
    sqlite3DbFree(db, pSorter);
    pCsr->uc.pSorter = 0;
  }
}
