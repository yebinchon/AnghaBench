
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_2__ {int aData; scalar_t__ bFreeOnClose; } ;
typedef TYPE_1__ MemFile ;


 int SQLITE_OK ;
 int sqlite3_free (int ) ;

__attribute__((used)) static int memClose(sqlite3_file *pFile){
  MemFile *p = (MemFile *)pFile;
  if( p->bFreeOnClose ) sqlite3_free(p->aData);
  return SQLITE_OK;
}
