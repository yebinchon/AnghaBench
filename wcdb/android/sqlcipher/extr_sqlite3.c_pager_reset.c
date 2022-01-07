
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pPCache; int pBackup; int iDataVersion; } ;
typedef TYPE_1__ Pager ;


 int sqlite3BackupRestart (int ) ;
 int sqlite3PcacheClear (int ) ;

__attribute__((used)) static void pager_reset(Pager *pPager){
  pPager->iDataVersion++;
  sqlite3BackupRestart(pPager->pBackup);
  sqlite3PcacheClear(pPager->pPCache);
}
