
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pIncr; scalar_t__ aMap; int pFd; int aBuffer; int aAlloc; } ;
typedef TYPE_1__ PmaReader ;


 int memset (TYPE_1__*,int ,int) ;
 int sqlite3OsUnfetch (int ,int ,scalar_t__) ;
 int sqlite3_free (int ) ;
 int vdbeIncrFree (int ) ;

__attribute__((used)) static void vdbePmaReaderClear(PmaReader *pReadr){
  sqlite3_free(pReadr->aAlloc);
  sqlite3_free(pReadr->aBuffer);
  if( pReadr->aMap ) sqlite3OsUnfetch(pReadr->pFd, 0, pReadr->aMap);
  vdbeIncrFree(pReadr->pIncr);
  memset(pReadr, 0, sizeof(PmaReader));
}
