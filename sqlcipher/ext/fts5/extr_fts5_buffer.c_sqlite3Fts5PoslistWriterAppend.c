
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {int iPrev; } ;
typedef TYPE_1__ Fts5PoslistWriter ;
typedef int Fts5Buffer ;


 int SQLITE_OK ;
 scalar_t__ fts5BufferGrow (int*,int *,int) ;
 int sqlite3Fts5PoslistSafeAppend (int *,int *,int ) ;

int sqlite3Fts5PoslistWriterAppend(
  Fts5Buffer *pBuf,
  Fts5PoslistWriter *pWriter,
  i64 iPos
){
  int rc = 0;
  if( fts5BufferGrow(&rc, pBuf, 5+5+5) ) return rc;
  sqlite3Fts5PoslistSafeAppend(pBuf, &pWriter->iPrev, iPos);
  return SQLITE_OK;
}
