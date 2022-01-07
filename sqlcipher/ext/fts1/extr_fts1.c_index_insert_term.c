
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int fulltext_vtab ;
struct TYPE_12__ {scalar_t__ nData; } ;
typedef TYPE_1__ DocList ;


 scalar_t__ CHUNK_MAX ;
 int DL_DEFAULT ;
 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int docListAccumulate (TYPE_1__*,TYPE_1__*) ;
 int docListDestroy (TYPE_1__*) ;
 int docListInit (TYPE_1__*,int ,int ,int ) ;
 int docListUpdate (TYPE_1__*,TYPE_1__*) ;
 int term_delete (int *,scalar_t__) ;
 int term_insert (int *,scalar_t__*,char const*,int,int,TYPE_1__*) ;
 int term_select (int *,char const*,int,int,scalar_t__*,TYPE_1__*) ;
 int term_update (int *,scalar_t__,TYPE_1__*) ;

__attribute__((used)) static int index_insert_term(fulltext_vtab *v, const char *pTerm, int nTerm,
                             DocList *d){
  sqlite_int64 iIndexRow;
  DocList doclist;
  int iSegment = 0, rc;

  rc = term_select(v, pTerm, nTerm, iSegment, &iIndexRow, &doclist);
  if( rc==SQLITE_DONE ){
    docListInit(&doclist, DL_DEFAULT, 0, 0);
    docListUpdate(&doclist, d);

    rc = term_insert(v, ((void*)0), pTerm, nTerm, iSegment, &doclist);
    goto err;
  }
  if( rc!=SQLITE_ROW ) return SQLITE_ERROR;

  docListUpdate(&doclist, d);
  if( doclist.nData<=CHUNK_MAX ){
    rc = term_update(v, iIndexRow, &doclist);
    goto err;
  }




  rc = term_delete(v, iIndexRow);
  if( rc!=SQLITE_OK ) goto err;





  iSegment++;
  while( (rc=term_insert(v, &iIndexRow, pTerm, nTerm, iSegment,
                         &doclist))!=SQLITE_OK ){
    sqlite_int64 iSegmentRow;
    DocList old;
    int rc2;




    rc2 = term_select(v, pTerm, nTerm, iSegment, &iSegmentRow, &old);
    if( rc2!=SQLITE_ROW ) goto err;

    rc = term_delete(v, iSegmentRow);
    if( rc!=SQLITE_OK ) goto err;


    if( iSegmentRow<iIndexRow ) iIndexRow = iSegmentRow;




    docListAccumulate(&old, &doclist);
    docListDestroy(&doclist);
    doclist = old;

    iSegment++;
  }

 err:
  docListDestroy(&doclist);
  return rc;
}
