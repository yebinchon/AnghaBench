
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_19__ {char* zTerm; int nTerm; char* aDoclist; int nDoclist; } ;
struct TYPE_18__ {int nNodeSize; } ;
struct TYPE_17__ {int nLeafData; int nWork; TYPE_1__* aNodeWriter; } ;
struct TYPE_15__ {scalar_t__ n; int a; } ;
struct TYPE_14__ {int n; char* a; } ;
struct TYPE_16__ {TYPE_12__ key; TYPE_11__ block; int iBlock; } ;
typedef TYPE_1__ NodeWriter ;
typedef TYPE_2__ IncrmergeWriter ;
typedef TYPE_3__ Fts3Table ;
typedef TYPE_4__ Fts3MultiSegReader ;


 int SQLITE_OK ;
 int blobGrowBuffer (TYPE_11__*,int,int*) ;
 int fts3AppendToNode (TYPE_11__*,TYPE_12__*,char const*,int,char const*,int) ;
 int fts3IncrmergePush (TYPE_3__*,TYPE_2__*,char const*,int) ;
 int fts3PrefixCompress (int ,scalar_t__,char const*,int) ;
 int fts3WriteSegment (TYPE_3__*,int ,char*,int) ;
 int sqlite3Fts3VarintLen (int) ;

__attribute__((used)) static int fts3IncrmergeAppend(
  Fts3Table *p,
  IncrmergeWriter *pWriter,
  Fts3MultiSegReader *pCsr
){
  const char *zTerm = pCsr->zTerm;
  int nTerm = pCsr->nTerm;
  const char *aDoclist = pCsr->aDoclist;
  int nDoclist = pCsr->nDoclist;
  int rc = SQLITE_OK;
  int nSpace;
  int nPrefix;
  int nSuffix;
  NodeWriter *pLeaf;

  pLeaf = &pWriter->aNodeWriter[0];
  nPrefix = fts3PrefixCompress(pLeaf->key.a, pLeaf->key.n, zTerm, nTerm);
  nSuffix = nTerm - nPrefix;

  nSpace = sqlite3Fts3VarintLen(nPrefix);
  nSpace += sqlite3Fts3VarintLen(nSuffix) + nSuffix;
  nSpace += sqlite3Fts3VarintLen(nDoclist) + nDoclist;




  if( pLeaf->block.n>0 && (pLeaf->block.n + nSpace)>p->nNodeSize ){
    rc = fts3WriteSegment(p, pLeaf->iBlock, pLeaf->block.a, pLeaf->block.n);
    pWriter->nWork++;
    if( rc==SQLITE_OK ){
      rc = fts3IncrmergePush(p, pWriter, zTerm, nPrefix+1);
    }


    pLeaf->iBlock++;
    pLeaf->key.n = 0;
    pLeaf->block.n = 0;

    nSuffix = nTerm;
    nSpace = 1;
    nSpace += sqlite3Fts3VarintLen(nSuffix) + nSuffix;
    nSpace += sqlite3Fts3VarintLen(nDoclist) + nDoclist;
  }

  pWriter->nLeafData += nSpace;
  blobGrowBuffer(&pLeaf->block, pLeaf->block.n + nSpace, &rc);
  if( rc==SQLITE_OK ){
    if( pLeaf->block.n==0 ){
      pLeaf->block.n = 1;
      pLeaf->block.a[0] = '\0';
    }
    rc = fts3AppendToNode(
        &pLeaf->block, &pLeaf->key, zTerm, nTerm, aDoclist, nDoclist
    );
  }

  return rc;
}
