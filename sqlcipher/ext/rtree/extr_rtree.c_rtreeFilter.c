
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
struct TYPE_27__ {scalar_t__ pVtab; } ;
typedef TYPE_4__ sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef int i64 ;
struct TYPE_30__ {int iDepth; int nDim2; } ;
struct TYPE_26__ {void* rValue; } ;
struct TYPE_24__ {int * pVtab; } ;
struct TYPE_29__ {int iStrategy; int atEOF; int nConstraint; char op; char iCoord; int bPoint; int ** aNode; TYPE_3__ u; TYPE_2__* pInfo; struct TYPE_29__* anQueue; struct TYPE_29__* aConstraint; int * pReadAux; TYPE_1__ base; int aPoint; } ;
struct TYPE_28__ {int id; void* eWithin; scalar_t__ iCell; } ;
struct TYPE_25__ {int mxLevel; TYPE_6__* anQueue; int nCoord; } ;
typedef TYPE_5__ RtreeSearchPoint ;
typedef int RtreeNode ;
typedef TYPE_6__ RtreeCursor ;
typedef TYPE_6__ RtreeConstraint ;
typedef TYPE_8__ Rtree ;


 void* PARTLY_WITHIN ;
 char RTREE_MATCH ;
 int RTREE_QUEUE_TRACE (TYPE_6__*,char*) ;
 int RTREE_ZERO ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int deserializeGeometry (int *,TYPE_6__*) ;
 int findLeafNode (TYPE_8__*,int,int **,int*) ;
 int freeCursorConstraints (TYPE_6__*) ;
 int memset (TYPE_6__*,int ,int) ;
 int nodeAcquire (TYPE_8__*,int,int ,int **) ;
 int nodeRelease (TYPE_8__*,int *) ;
 int nodeRowidIndex (TYPE_8__*,int *,int,int*) ;
 int rtreeReference (TYPE_8__*) ;
 int rtreeRelease (TYPE_8__*) ;
 TYPE_5__* rtreeSearchPointNew (TYPE_6__*,int ,scalar_t__) ;
 int rtreeStepToLeaf (TYPE_6__*) ;
 int sqlite3_free (int ) ;
 TYPE_6__* sqlite3_malloc64 (int) ;
 void* sqlite3_value_double (int *) ;
 void* sqlite3_value_int64 (int *) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int rtreeFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  Rtree *pRtree = (Rtree *)pVtabCursor->pVtab;
  RtreeCursor *pCsr = (RtreeCursor *)pVtabCursor;
  RtreeNode *pRoot = 0;
  int ii;
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
    if( rc==SQLITE_OK && argc>0 ){
      pCsr->aConstraint = sqlite3_malloc64(sizeof(RtreeConstraint)*argc);
      pCsr->nConstraint = argc;
      if( !pCsr->aConstraint ){
        rc = SQLITE_NOMEM;
      }else{
        memset(pCsr->aConstraint, 0, sizeof(RtreeConstraint)*argc);
        memset(pCsr->anQueue, 0, sizeof(u32)*(pRtree->iDepth + 1));
        assert( (idxStr==0 && argc==0)
                || (idxStr && (int)strlen(idxStr)==argc*2) );
        for(ii=0; ii<argc; ii++){
          RtreeConstraint *p = &pCsr->aConstraint[ii];
          p->op = idxStr[ii*2];
          p->iCoord = idxStr[ii*2+1]-'0';
          if( p->op>=RTREE_MATCH ){




            rc = deserializeGeometry(argv[ii], p);
            if( rc!=SQLITE_OK ){
              break;
            }
            p->pInfo->nCoord = pRtree->nDim2;
            p->pInfo->anQueue = pCsr->anQueue;
            p->pInfo->mxLevel = pRtree->iDepth + 1;
          }else{



            p->u.rValue = sqlite3_value_double(argv[ii]);

          }
        }
      }
    }
    if( rc==SQLITE_OK ){
      RtreeSearchPoint *pNew;
      pNew = rtreeSearchPointNew(pCsr, RTREE_ZERO, (u8)(pRtree->iDepth+1));
      if( pNew==0 ) return SQLITE_NOMEM;
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

  nodeRelease(pRtree, pRoot);
  rtreeRelease(pRtree);
  return rc;
}
