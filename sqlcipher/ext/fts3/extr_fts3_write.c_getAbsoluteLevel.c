
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_3__ {int nIndex; } ;
typedef TYPE_1__ Fts3Table ;


 int FTS3_SEGDIR_MAXLEVEL ;
 int assert (int) ;
 int assert_fts3_nc (int) ;

__attribute__((used)) static sqlite3_int64 getAbsoluteLevel(
  Fts3Table *p,
  int iLangid,
  int iIndex,
  int iLevel
){
  sqlite3_int64 iBase;
  assert_fts3_nc( iLangid>=0 );
  assert( p->nIndex>0 );
  assert( iIndex>=0 && iIndex<p->nIndex );

  iBase = ((sqlite3_int64)iLangid * p->nIndex + iIndex) * FTS3_SEGDIR_MAXLEVEL;
  return iBase + iLevel;
}
