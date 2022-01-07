
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int fulltext_vtab ;
typedef int fts2HashElem ;
typedef int fts2Hash ;
struct TYPE_10__ {int nTerm; int pTerm; int pCollector; } ;
typedef TYPE_1__ TermData ;
struct TYPE_11__ {int nData; int pData; } ;
typedef int LeafWriter ;
typedef TYPE_2__ DataBuffer ;


 int SQLITE_OK ;
 int assert (int) ;
 int dataBufferDestroy (TYPE_2__*) ;
 int dataBufferInit (TYPE_2__*,int ) ;
 int dataBufferReset (TYPE_2__*) ;
 int dlcAddDoclist (int ,TYPE_2__*) ;
 int fts2HashCount (int *) ;
 int fts2HashData (int *) ;
 int * fts2HashFirst (int *) ;
 int fts2HashKey (int *) ;
 int fts2HashKeysize (int *) ;
 int * fts2HashNext (int *) ;
 int leafWriterDestroy (int *) ;
 int leafWriterFinalize (int *,int *) ;
 int leafWriterInit (int ,int,int *) ;
 int leafWriterStep (int *,int *,int ,int ,int ,int ) ;
 int qsort (TYPE_1__*,int,int,int ) ;
 int segdirNextIndex (int *,int ,int*) ;
 int sqlite3_free (TYPE_1__*) ;
 TYPE_1__* sqlite3_malloc (int) ;
 int termDataCmp ;

__attribute__((used)) static int writeZeroSegment(fulltext_vtab *v, fts2Hash *pTerms){
  fts2HashElem *e;
  int idx, rc, i, n;
  TermData *pData;
  LeafWriter writer;
  DataBuffer dl;


  rc = segdirNextIndex(v, 0, &idx);
  if( rc!=SQLITE_OK ) return rc;

  n = fts2HashCount(pTerms);
  pData = sqlite3_malloc(n*sizeof(TermData));

  for(i = 0, e = fts2HashFirst(pTerms); e; i++, e = fts2HashNext(e)){
    assert( i<n );
    pData[i].pTerm = fts2HashKey(e);
    pData[i].nTerm = fts2HashKeysize(e);
    pData[i].pCollector = fts2HashData(e);
  }
  assert( i==n );




  if( n>1 ) qsort(pData, n, sizeof(*pData), termDataCmp);




  leafWriterInit(0, idx, &writer);
  dataBufferInit(&dl, 0);
  for(i=0; i<n; i++){
    dataBufferReset(&dl);
    dlcAddDoclist(pData[i].pCollector, &dl);
    rc = leafWriterStep(v, &writer,
                        pData[i].pTerm, pData[i].nTerm, dl.pData, dl.nData);
    if( rc!=SQLITE_OK ) goto err;
  }
  rc = leafWriterFinalize(v, &writer);

 err:
  dataBufferDestroy(&dl);
  sqlite3_free(pData);
  leafWriterDestroy(&writer);
  return rc;
}
