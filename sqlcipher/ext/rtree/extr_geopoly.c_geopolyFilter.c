
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_26__ {scalar_t__ pVtab; } ;
typedef TYPE_3__ sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef int i64 ;
struct TYPE_30__ {int iDepth; } ;
struct TYPE_29__ {int f; } ;
struct TYPE_25__ {int rValue; } ;
struct TYPE_24__ {int * pVtab; } ;
struct TYPE_28__ {int iStrategy; int atEOF; int nConstraint; char op; int iCoord; int bPoint; int ** aNode; TYPE_2__ u; struct TYPE_28__* anQueue; struct TYPE_28__* aConstraint; int * pReadAux; TYPE_1__ base; int aPoint; } ;
struct TYPE_27__ {int id; void* eWithin; scalar_t__ iCell; } ;
typedef TYPE_4__ RtreeSearchPoint ;
typedef int RtreeNode ;
typedef TYPE_5__ RtreeCursor ;
typedef TYPE_6__ RtreeCoord ;
typedef TYPE_5__ RtreeConstraint ;
typedef TYPE_8__ Rtree ;


 void* PARTLY_WITHIN ;
 int RTREE_QUEUE_TRACE (TYPE_5__*,char*) ;
 int RTREE_ZERO ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int findLeafNode (TYPE_8__*,int,int **,int*) ;
 int freeCursorConstraints (TYPE_5__*) ;
 int geopolyBBox (int ,int *,TYPE_6__*,int*) ;
 int memset (TYPE_5__*,int ,int) ;
 int nodeAcquire (TYPE_8__*,int,int ,int **) ;
 int nodeRelease (TYPE_8__*,int *) ;
 int nodeRowidIndex (TYPE_8__*,int *,int,int*) ;
 int rtreeReference (TYPE_8__*) ;
 int rtreeRelease (TYPE_8__*) ;
 TYPE_4__* rtreeSearchPointNew (TYPE_5__*,int ,scalar_t__) ;
 int rtreeStepToLeaf (TYPE_5__*) ;
 int sqlite3_free (int ) ;
 TYPE_5__* sqlite3_malloc (int) ;
 int sqlite3_value_int64 (int *) ;

__attribute__((used)) static int geopolyFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum,
  const char *idxStr,
  int argc, sqlite3_value **argv
){
  Rtree *pRtree = (Rtree *)pVtabCursor->pVtab;
  RtreeCursor *pCsr = (RtreeCursor *)pVtabCursor;
  RtreeNode *pRoot = 0;
  int rc = SQLITE_OK;
  int iCell = 0;
  sqlite3_stmt *pStmt;

  rtreeReference(pRtree);


  freeCursorConstraints(pCsr);
  sqlite3_free(pCsr->aPoint);
  pStmt = pCsr->pReadAux;
  memset(pCsr, 0, sizeof(RtreeCursor));
  pCsr->base.pVtab = (sqlite3_vtab*)pRtree;
  pCsr->pReadAux = pStmt;

  pCsr->iStrategy = idxNum;
  if( idxNum==1 ){

    RtreeNode *pLeaf;
    RtreeSearchPoint *p;
    i64 iRowid = sqlite3_value_int64(argv[0]);
    i64 iNode = 0;
    rc = findLeafNode(pRtree, iRowid, &pLeaf, &iNode);
    if( rc==SQLITE_OK && pLeaf!=0 ){
      p = rtreeSearchPointNew(pCsr, RTREE_ZERO, 0);
      assert( p!=0 );
      pCsr->aNode[0] = pLeaf;
      p->id = iNode;
      p->eWithin = PARTLY_WITHIN;
      rc = nodeRowidIndex(pRtree, pLeaf, iRowid, &iCell);
      p->iCell = (u8)iCell;
      RTREE_QUEUE_TRACE(pCsr, "PUSH-F1:");
    }else{
      pCsr->atEOF = 1;
    }
  }else{



    rc = nodeAcquire(pRtree, 1, 0, &pRoot);
    if( rc==SQLITE_OK && idxNum<=3 ){
      RtreeCoord bbox[4];
      RtreeConstraint *p;
      assert( argc==1 );
      geopolyBBox(0, argv[0], bbox, &rc);
      if( rc ){
        goto geopoly_filter_end;
      }
      pCsr->aConstraint = p = sqlite3_malloc(sizeof(RtreeConstraint)*4);
      pCsr->nConstraint = 4;
      if( p==0 ){
        rc = SQLITE_NOMEM;
      }else{
        memset(pCsr->aConstraint, 0, sizeof(RtreeConstraint)*4);
        memset(pCsr->anQueue, 0, sizeof(u32)*(pRtree->iDepth + 1));
        if( idxNum==2 ){

          p->op = 'B';
          p->iCoord = 0;
          p->u.rValue = bbox[1].f;
          p++;
          p->op = 'D';
          p->iCoord = 1;
          p->u.rValue = bbox[0].f;
          p++;
          p->op = 'B';
          p->iCoord = 2;
          p->u.rValue = bbox[3].f;
          p++;
          p->op = 'D';
          p->iCoord = 3;
          p->u.rValue = bbox[2].f;
        }else{

          p->op = 'D';
          p->iCoord = 0;
          p->u.rValue = bbox[0].f;
          p++;
          p->op = 'B';
          p->iCoord = 1;
          p->u.rValue = bbox[1].f;
          p++;
          p->op = 'D';
          p->iCoord = 2;
          p->u.rValue = bbox[2].f;
          p++;
          p->op = 'B';
          p->iCoord = 3;
          p->u.rValue = bbox[3].f;
        }
      }
    }
    if( rc==SQLITE_OK ){
      RtreeSearchPoint *pNew;
      pNew = rtreeSearchPointNew(pCsr, RTREE_ZERO, (u8)(pRtree->iDepth+1));
      if( pNew==0 ){
        rc = SQLITE_NOMEM;
        goto geopoly_filter_end;
      }
      pNew->id = 1;
      pNew->iCell = 0;
      pNew->eWithin = PARTLY_WITHIN;
      assert( pCsr->bPoint==1 );
      pCsr->aNode[0] = pRoot;
      pRoot = 0;
      RTREE_QUEUE_TRACE(pCsr, "PUSH-Fm:");
      rc = rtreeStepToLeaf(pCsr);
    }
  }

geopoly_filter_end:
  nodeRelease(pRtree, pRoot);
  rtreeRelease(pRtree);
  return rc;
}
