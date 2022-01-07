
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int szOsFile; } ;
typedef TYPE_1__ sqlite3_vfs ;
typedef int MemJournal ;


 int MAX (int ,int) ;

int sqlite3JournalSize(sqlite3_vfs *pVfs){
  return MAX(pVfs->szOsFile, (int)sizeof(MemJournal));
}
