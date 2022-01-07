
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
struct TYPE_4__ {scalar_t__ iPrevDocid; int bPrevDelete; int iPrevLangid; scalar_t__ nPendingData; scalar_t__ nMaxPendingData; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3Fts3PendingTermsFlush (TYPE_1__*) ;

__attribute__((used)) static int fts3PendingTermsDocid(
  Fts3Table *p,
  int bDelete,
  int iLangid,
  sqlite_int64 iDocid
){
  assert( iLangid>=0 );
  assert( bDelete==1 || bDelete==0 );







  if( iDocid<p->iPrevDocid
   || (iDocid==p->iPrevDocid && p->bPrevDelete==0)
   || p->iPrevLangid!=iLangid
   || p->nPendingData>p->nMaxPendingData
  ){
    int rc = sqlite3Fts3PendingTermsFlush(p);
    if( rc!=SQLITE_OK ) return rc;
  }
  p->iPrevDocid = iDocid;
  p->iPrevLangid = iLangid;
  p->bPrevDelete = bDelete;
  return SQLITE_OK;
}
