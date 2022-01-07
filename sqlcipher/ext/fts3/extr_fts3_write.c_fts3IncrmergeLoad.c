
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef int sqlite3_stmt ;
typedef void* sqlite3_int64 ;
struct TYPE_20__ {int nNodeSize; } ;
struct TYPE_19__ {int nLeafData; int bNoLeafData; int nLeafEst; void* iStart; int iIdx; TYPE_2__* aNodeWriter; void* iAbsLevel; void* iEnd; } ;
struct TYPE_16__ {char* a; int n; } ;
struct TYPE_18__ {void* iChild; TYPE_1__ term; scalar_t__ aNode; } ;
struct TYPE_15__ {char* a; int n; } ;
struct TYPE_17__ {void* iBlock; TYPE_14__ block; TYPE_14__ key; } ;
typedef TYPE_2__ NodeWriter ;
typedef TYPE_3__ NodeReader ;
typedef TYPE_4__ IncrmergeWriter ;
typedef TYPE_5__ Fts3Table ;


 int FTS_MAX_APPENDABLE_HEIGHT ;
 int MAX (int,int ) ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQL_SELECT_SEGDIR ;
 int assert (scalar_t__) ;
 int blobGrowBuffer (TYPE_14__*,int,int*) ;
 int fts3IsAppendable (TYPE_5__*,void*,int*) ;
 int fts3ReadEndBlockField (int *,int,void**,int*) ;
 int fts3SqlStmt (TYPE_5__*,int ,int **,int ) ;
 scalar_t__ fts3TermCmp (char const*,int,char*,int) ;
 int memcpy (char*,char const*,int) ;
 int nodeReaderInit (TYPE_3__*,char*,int) ;
 int nodeReaderNext (TYPE_3__*) ;
 int nodeReaderRelease (TYPE_3__*) ;
 int sqlite3Fts3ReadBlock (TYPE_5__*,void*,char**,int*,int ) ;
 int sqlite3_bind_int (int *,int,int) ;
 int sqlite3_bind_int64 (int *,int,void*) ;
 char* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 void* sqlite3_column_int64 (int *,int) ;
 int sqlite3_free (char*) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int fts3IncrmergeLoad(
  Fts3Table *p,
  sqlite3_int64 iAbsLevel,
  int iIdx,
  const char *zKey,
  int nKey,
  IncrmergeWriter *pWriter
){
  int rc;
  sqlite3_stmt *pSelect = 0;

  rc = fts3SqlStmt(p, SQL_SELECT_SEGDIR, &pSelect, 0);
  if( rc==SQLITE_OK ){
    sqlite3_int64 iStart = 0;
    sqlite3_int64 iLeafEnd = 0;
    sqlite3_int64 iEnd = 0;
    const char *aRoot = 0;
    int nRoot = 0;
    int rc2;
    int bAppendable = 0;


    sqlite3_bind_int64(pSelect, 1, iAbsLevel+1);
    sqlite3_bind_int(pSelect, 2, iIdx);
    if( sqlite3_step(pSelect)==SQLITE_ROW ){
      iStart = sqlite3_column_int64(pSelect, 1);
      iLeafEnd = sqlite3_column_int64(pSelect, 2);
      fts3ReadEndBlockField(pSelect, 3, &iEnd, &pWriter->nLeafData);
      if( pWriter->nLeafData<0 ){
        pWriter->nLeafData = pWriter->nLeafData * -1;
      }
      pWriter->bNoLeafData = (pWriter->nLeafData==0);
      nRoot = sqlite3_column_bytes(pSelect, 4);
      aRoot = sqlite3_column_blob(pSelect, 4);
    }else{
      return sqlite3_reset(pSelect);
    }


    rc = fts3IsAppendable(p, iEnd, &bAppendable);


    if( rc==SQLITE_OK && bAppendable ){
      char *aLeaf = 0;
      int nLeaf = 0;

      rc = sqlite3Fts3ReadBlock(p, iLeafEnd, &aLeaf, &nLeaf, 0);
      if( rc==SQLITE_OK ){
        NodeReader reader;
        for(rc = nodeReaderInit(&reader, aLeaf, nLeaf);
            rc==SQLITE_OK && reader.aNode;
            rc = nodeReaderNext(&reader)
        ){
          assert( reader.aNode );
        }
        if( fts3TermCmp(zKey, nKey, reader.term.a, reader.term.n)<=0 ){
          bAppendable = 0;
        }
        nodeReaderRelease(&reader);
      }
      sqlite3_free(aLeaf);
    }

    if( rc==SQLITE_OK && bAppendable ){


      int i;
      int nHeight = (int)aRoot[0];
      NodeWriter *pNode;

      pWriter->nLeafEst = (int)((iEnd - iStart) + 1)/FTS_MAX_APPENDABLE_HEIGHT;
      pWriter->iStart = iStart;
      pWriter->iEnd = iEnd;
      pWriter->iAbsLevel = iAbsLevel;
      pWriter->iIdx = iIdx;

      for(i=nHeight+1; i<FTS_MAX_APPENDABLE_HEIGHT; i++){
        pWriter->aNodeWriter[i].iBlock = pWriter->iStart + i*pWriter->nLeafEst;
      }

      pNode = &pWriter->aNodeWriter[nHeight];
      pNode->iBlock = pWriter->iStart + pWriter->nLeafEst*nHeight;
      blobGrowBuffer(&pNode->block, MAX(nRoot, p->nNodeSize), &rc);
      if( rc==SQLITE_OK ){
        memcpy(pNode->block.a, aRoot, nRoot);
        pNode->block.n = nRoot;
      }

      for(i=nHeight; i>=0 && rc==SQLITE_OK; i--){
        NodeReader reader;
        pNode = &pWriter->aNodeWriter[i];

        rc = nodeReaderInit(&reader, pNode->block.a, pNode->block.n);
        while( reader.aNode && rc==SQLITE_OK ) rc = nodeReaderNext(&reader);
        blobGrowBuffer(&pNode->key, reader.term.n, &rc);
        if( rc==SQLITE_OK ){
          memcpy(pNode->key.a, reader.term.a, reader.term.n);
          pNode->key.n = reader.term.n;
          if( i>0 ){
            char *aBlock = 0;
            int nBlock = 0;
            pNode = &pWriter->aNodeWriter[i-1];
            pNode->iBlock = reader.iChild;
            rc = sqlite3Fts3ReadBlock(p, reader.iChild, &aBlock, &nBlock, 0);
            blobGrowBuffer(&pNode->block, MAX(nBlock, p->nNodeSize), &rc);
            if( rc==SQLITE_OK ){
              memcpy(pNode->block.a, aBlock, nBlock);
              pNode->block.n = nBlock;
            }
            sqlite3_free(aBlock);
          }
        }
        nodeReaderRelease(&reader);
      }
    }

    rc2 = sqlite3_reset(pSelect);
    if( rc==SQLITE_OK ) rc = rc2;
  }

  return rc;
}
