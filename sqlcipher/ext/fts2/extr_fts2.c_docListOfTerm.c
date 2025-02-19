
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ nPendingData; } ;
typedef TYPE_1__ fulltext_vtab ;
struct TYPE_14__ {scalar_t__ nData; int pData; } ;
struct TYPE_13__ {int nPhrase; int isPrefix; int nTerm; int pTerm; } ;
typedef TYPE_2__ QueryTerm ;
typedef TYPE_3__ DataBuffer ;


 scalar_t__ DL_DEFAULT ;
 scalar_t__ DL_DOCIDS ;
 scalar_t__ DL_POSITIONS ;
 int SQLITE_OK ;
 int assert (int) ;
 int dataBufferDestroy (TYPE_3__*) ;
 int dataBufferInit (TYPE_3__*,int ) ;
 int docListPhraseMerge (int ,scalar_t__,int ,scalar_t__,scalar_t__,TYPE_3__*) ;
 int termSelect (TYPE_1__*,int,int ,int ,int ,scalar_t__,TYPE_3__*) ;

__attribute__((used)) static int docListOfTerm(
  fulltext_vtab *v,
  int iColumn,
  QueryTerm *pQTerm,
  DataBuffer *pResult
){
  DataBuffer left, right, new;
  int i, rc;


  assert( pQTerm->nPhrase==0 || DL_DEFAULT!=DL_DOCIDS );


  assert( v->nPendingData<0 );

  dataBufferInit(&left, 0);
  rc = termSelect(v, iColumn, pQTerm->pTerm, pQTerm->nTerm, pQTerm->isPrefix,
                  0<pQTerm->nPhrase ? DL_POSITIONS : DL_DOCIDS, &left);
  if( rc ) return rc;
  for(i=1; i<=pQTerm->nPhrase && left.nData>0; i++){
    dataBufferInit(&right, 0);
    rc = termSelect(v, iColumn, pQTerm[i].pTerm, pQTerm[i].nTerm,
                    pQTerm[i].isPrefix, DL_POSITIONS, &right);
    if( rc ){
      dataBufferDestroy(&left);
      return rc;
    }
    dataBufferInit(&new, 0);
    docListPhraseMerge(left.pData, left.nData, right.pData, right.nData,
                       i<pQTerm->nPhrase ? DL_POSITIONS : DL_DOCIDS, &new);
    dataBufferDestroy(&left);
    dataBufferDestroy(&right);
    left = new;
  }
  *pResult = left;
  return SQLITE_OK;
}
