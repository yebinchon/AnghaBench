
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int sqlite3_vtab ;
typedef int i64 ;
struct TYPE_6__ {int const nLeafAdd; int nAutoincrmerge; int db; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3Fts3Incrmerge (TYPE_1__*,int,int) ;
 int sqlite3Fts3MaxLevel (TYPE_1__*,int*) ;
 int sqlite3Fts3PendingTermsFlush (TYPE_1__*) ;
 int sqlite3Fts3SegmentsClose (TYPE_1__*) ;
 int sqlite3_last_insert_rowid (int ) ;
 int sqlite3_set_last_insert_rowid (int ,int ) ;

__attribute__((used)) static int fts3SyncMethod(sqlite3_vtab *pVtab){
  const u32 nMinMerge = 64;

  Fts3Table *p = (Fts3Table*)pVtab;
  int rc;
  i64 iLastRowid = sqlite3_last_insert_rowid(p->db);

  rc = sqlite3Fts3PendingTermsFlush(p);
  if( rc==SQLITE_OK
   && p->nLeafAdd>(nMinMerge/16)
   && p->nAutoincrmerge && p->nAutoincrmerge!=0xff
  ){
    int mxLevel = 0;
    int A;

    rc = sqlite3Fts3MaxLevel(p, &mxLevel);
    assert( rc==SQLITE_OK || mxLevel==0 );
    A = p->nLeafAdd * mxLevel;
    A += (A/2);
    if( A>(int)nMinMerge ) rc = sqlite3Fts3Incrmerge(p, A, p->nAutoincrmerge);
  }
  sqlite3Fts3SegmentsClose(p);
  sqlite3_set_last_insert_rowid(p->db, iLastRowid);
  return rc;
}
