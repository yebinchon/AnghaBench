
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int fulltext_vtab ;
struct TYPE_6__ {scalar_t__ nData; } ;
typedef TYPE_1__ DocList ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int docListDestroy (TYPE_1__*) ;
 scalar_t__ docListUpdate (TYPE_1__*,int ,int *) ;
 int term_chunk_select (int *,char const*,int,int ,int *) ;
 int term_delete (int *,int ) ;
 int term_select (int *,char const*,int,int ,int *,TYPE_1__*) ;
 int term_update (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int index_delete_term(fulltext_vtab *v, const char *zTerm, int nTerm,
                             sqlite_int64 iDocid){
  sqlite_int64 iFirst;
  sqlite_int64 iIndexRow;
  DocList doclist;

  int rc = term_chunk_select(v, zTerm, nTerm, iDocid, &iFirst);
  if( rc!=SQLITE_ROW ) return SQLITE_ERROR;

  rc = term_select(v, zTerm, nTerm, iFirst, &iIndexRow, &doclist);
  if( rc!=SQLITE_OK ) return rc;

  if( docListUpdate(&doclist, iDocid, ((void*)0)) ){
    if( doclist.nData>0 ){
      rc = term_update(v, iIndexRow, &doclist);
    } else {
      rc = term_delete(v, iIndexRow);
    }
  }
  docListDestroy(&doclist);
  return rc;
}
