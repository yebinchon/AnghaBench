
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int sqlite3_value ;
struct TYPE_7__ {int nColumn; scalar_t__ zContentTbl; scalar_t__ bHasDocsize; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_OK ;
 int SQL_DELETE_CONTENT ;
 int SQL_DELETE_DOCSIZE ;
 int fts3DeleteAll (TYPE_1__*,int) ;
 int fts3DeleteTerms (int*,TYPE_1__*,int *,int *,int*) ;
 int fts3IsEmpty (TYPE_1__*,int *,int*) ;
 int fts3SqlExec (int*,TYPE_1__*,int ,int **) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int fts3DeleteByRowid(
  Fts3Table *p,
  sqlite3_value *pRowid,
  int *pnChng,
  u32 *aSzDel
){
  int rc = SQLITE_OK;
  int bFound = 0;

  fts3DeleteTerms(&rc, p, pRowid, aSzDel, &bFound);
  if( bFound && rc==SQLITE_OK ){
    int isEmpty = 0;
    rc = fts3IsEmpty(p, pRowid, &isEmpty);
    if( rc==SQLITE_OK ){
      if( isEmpty ){



        rc = fts3DeleteAll(p, 1);
        *pnChng = 0;
        memset(aSzDel, 0, sizeof(u32) * (p->nColumn+1) * 2);
      }else{
        *pnChng = *pnChng - 1;
        if( p->zContentTbl==0 ){
          fts3SqlExec(&rc, p, SQL_DELETE_CONTENT, &pRowid);
        }
        if( p->bHasDocsize ){
          fts3SqlExec(&rc, p, SQL_DELETE_DOCSIZE, &pRowid);
        }
      }
    }
  }

  return rc;
}
