
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_file ;
struct TYPE_3__ {int nDatabase; int nJournal; } ;
typedef TYPE_1__ fs_real_file ;
struct TYPE_4__ {scalar_t__ eType; TYPE_1__* pReal; } ;
typedef TYPE_2__ fs_file ;


 scalar_t__ DATABASE_FILE ;
 scalar_t__ MIN (int,int ) ;
 int SQLITE_OK ;

__attribute__((used)) static int fsTruncate(sqlite3_file *pFile, sqlite_int64 size){
  fs_file *p = (fs_file *)pFile;
  fs_real_file *pReal = p->pReal;
  if( p->eType==DATABASE_FILE ){
    pReal->nDatabase = (int)MIN(pReal->nDatabase, size);
  }else{
    pReal->nJournal = (int)MIN(pReal->nJournal, size);
  }
  return SQLITE_OK;
}
