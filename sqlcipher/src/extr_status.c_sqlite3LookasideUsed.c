
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int nSlot; int pFree; int pInit; } ;
struct TYPE_5__ {TYPE_1__ lookaside; } ;
typedef TYPE_2__ sqlite3 ;


 int countLookasideSlots (int ) ;

int sqlite3LookasideUsed(sqlite3 *db, int *pHighwater){
  u32 nInit = countLookasideSlots(db->lookaside.pInit);
  u32 nFree = countLookasideSlots(db->lookaside.pFree);
  if( pHighwater ) *pHighwater = db->lookaside.nSlot - nInit;
  return db->lookaside.nSlot - (nInit+nFree);
}
