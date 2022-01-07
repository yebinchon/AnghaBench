
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
struct TYPE_4__ {scalar_t__ iPrevDocid; scalar_t__ nPendingData; int pendingTerms; } ;
typedef TYPE_1__ fulltext_vtab ;


 int FTS2_HASH_STRING ;
 int SQLITE_OK ;
 int flushPendingTerms (TYPE_1__*) ;
 int fts2HashInit (int *,int ,int) ;
 scalar_t__ kPendingThreshold ;

__attribute__((used)) static int initPendingTerms(fulltext_vtab *v, sqlite_int64 iDocid){






  if( iDocid<=v->iPrevDocid || v->nPendingData>kPendingThreshold ){
    int rc = flushPendingTerms(v);
    if( rc!=SQLITE_OK ) return rc;
  }
  if( v->nPendingData<0 ){
    fts2HashInit(&v->pendingTerms, FTS2_HASH_STRING, 1);
    v->nPendingData = 0;
  }
  v->iPrevDocid = iDocid;
  return SQLITE_OK;
}
