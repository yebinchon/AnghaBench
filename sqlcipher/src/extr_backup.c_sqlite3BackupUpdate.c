
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int sqlite3_backup ;
typedef int Pgno ;


 int backupUpdate (int *,int ,int const*) ;

void sqlite3BackupUpdate(sqlite3_backup *pBackup, Pgno iPage, const u8 *aData){
  if( pBackup ) backupUpdate(pBackup, iPage, aData);
}
