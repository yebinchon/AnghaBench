
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nPendingData; int pendingTerms; } ;
typedef TYPE_1__ fulltext_vtab ;


 int SQLITE_OK ;
 int clearPendingTerms (TYPE_1__*) ;
 int writeZeroSegment (TYPE_1__*,int *) ;

__attribute__((used)) static int flushPendingTerms(fulltext_vtab *v){
  if( v->nPendingData>=0 ){
    int rc = writeZeroSegment(v, &v->pendingTerms);
    if( rc==SQLITE_OK ) clearPendingTerms(v);
    return rc;
  }
  return SQLITE_OK;
}
