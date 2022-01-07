
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_14__ {scalar_t__ n; scalar_t__ nAlloc; int a; int member_2; int member_1; int member_0; } ;
struct TYPE_12__ {int n; int a; } ;
struct TYPE_13__ {int iChild; int nDoclist; int aDoclist; TYPE_1__ term; scalar_t__ aNode; } ;
typedef TYPE_2__ NodeReader ;
typedef TYPE_3__ Blob ;


 int SQLITE_OK ;
 int assert (int) ;
 int blobGrowBuffer (TYPE_3__*,int,int*) ;
 int fts3AppendToNode (TYPE_3__*,TYPE_3__*,int ,int ,int ,int ) ;
 int fts3StartNode (TYPE_3__*,int,int ) ;
 int fts3TermCmp (int ,int ,char const*,int) ;
 int nodeReaderInit (TYPE_2__*,char const*,int) ;
 int nodeReaderNext (TYPE_2__*) ;
 int nodeReaderRelease (TYPE_2__*) ;
 int sqlite3_free (int ) ;

__attribute__((used)) static int fts3TruncateNode(
  const char *aNode,
  int nNode,
  Blob *pNew,
  const char *zTerm,
  int nTerm,
  sqlite3_int64 *piBlock
){
  NodeReader reader;
  Blob prev = {0, 0, 0};
  int rc = SQLITE_OK;
  int bLeaf = aNode[0]=='\0';


  blobGrowBuffer(pNew, nNode, &rc);
  if( rc!=SQLITE_OK ) return rc;
  pNew->n = 0;


  for(rc = nodeReaderInit(&reader, aNode, nNode);
      rc==SQLITE_OK && reader.aNode;
      rc = nodeReaderNext(&reader)
  ){
    if( pNew->n==0 ){
      int res = fts3TermCmp(reader.term.a, reader.term.n, zTerm, nTerm);
      if( res<0 || (bLeaf==0 && res==0) ) continue;
      fts3StartNode(pNew, (int)aNode[0], reader.iChild);
      *piBlock = reader.iChild;
    }
    rc = fts3AppendToNode(
        pNew, &prev, reader.term.a, reader.term.n,
        reader.aDoclist, reader.nDoclist
    );
    if( rc!=SQLITE_OK ) break;
  }
  if( pNew->n==0 ){
    fts3StartNode(pNew, (int)aNode[0], reader.iChild);
    *piBlock = reader.iChild;
  }
  assert( pNew->n<=pNew->nAlloc );

  nodeReaderRelease(&reader);
  sqlite3_free(prev.a);
  return rc;
}
