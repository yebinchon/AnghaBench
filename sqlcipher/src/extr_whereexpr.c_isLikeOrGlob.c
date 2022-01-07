
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int sqlite3_value ;
struct TYPE_29__ {int flags; } ;
typedef TYPE_5__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_28__ {char* zToken; } ;
struct TYPE_27__ {int pTab; } ;
struct TYPE_25__ {TYPE_7__* pList; } ;
struct TYPE_32__ {int op; int iColumn; TYPE_4__ u; TYPE_3__ y; TYPE_1__ x; } ;
struct TYPE_31__ {TYPE_2__* a; } ;
struct TYPE_30__ {int * pVdbe; int * pReprepare; TYPE_5__* db; } ;
struct TYPE_26__ {TYPE_8__* pExpr; } ;
typedef TYPE_6__ Parse ;
typedef TYPE_7__ ExprList ;
typedef TYPE_8__ Expr ;


 scalar_t__ IsVirtual (int ) ;
 int SQLITE_AFF_BLOB ;
 scalar_t__ SQLITE_AFF_TEXT ;
 int SQLITE_EnableQPSG ;
 scalar_t__ SQLITE_TEXT ;
 scalar_t__ TK_COLUMN ;
 int TK_REGISTER ;
 int TK_STRING ;
 int TK_VARIABLE ;
 int assert (int) ;
 TYPE_8__* sqlite3Expr (TYPE_5__*,int,char*) ;
 scalar_t__ sqlite3ExprAffinity (TYPE_8__*) ;
 int sqlite3ExprCodeTarget (TYPE_6__*,TYPE_8__*,int) ;
 int sqlite3ExprDelete (TYPE_5__*,TYPE_8__*) ;
 TYPE_8__* sqlite3ExprSkipCollate (TYPE_8__*) ;
 int sqlite3GetTempReg (TYPE_6__*) ;
 int sqlite3IsLikeFunction (TYPE_5__*,TYPE_8__*,int*,char*) ;
 scalar_t__ sqlite3Isdigit (char) ;
 int sqlite3ReleaseTempReg (TYPE_6__*,int) ;
 int sqlite3ValueFree (int *) ;
 int sqlite3VdbeChangeP3 (int *,scalar_t__,int ) ;
 scalar_t__ sqlite3VdbeCurrentAddr (int *) ;
 int * sqlite3VdbeGetBoundValue (int *,int,int ) ;
 int sqlite3VdbeSetVarmask (int *,int) ;
 scalar_t__* sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static int isLikeOrGlob(
  Parse *pParse,
  Expr *pExpr,
  Expr **ppPrefix,
  int *pisComplete,
  int *pnoCase
){
  const u8 *z = 0;
  Expr *pRight, *pLeft;
  ExprList *pList;
  u8 c;
  int cnt;
  u8 wc[4];
  sqlite3 *db = pParse->db;
  sqlite3_value *pVal = 0;
  int op;
  int rc;

  if( !sqlite3IsLikeFunction(db, pExpr, pnoCase, (char*)wc) ){
    return 0;
  }



  pList = pExpr->x.pList;
  pLeft = pList->a[1].pExpr;

  pRight = sqlite3ExprSkipCollate(pList->a[0].pExpr);
  op = pRight->op;
  if( op==TK_VARIABLE && (db->flags & SQLITE_EnableQPSG)==0 ){
    Vdbe *pReprepare = pParse->pReprepare;
    int iCol = pRight->iColumn;
    pVal = sqlite3VdbeGetBoundValue(pReprepare, iCol, SQLITE_AFF_BLOB);
    if( pVal && sqlite3_value_type(pVal)==SQLITE_TEXT ){
      z = sqlite3_value_text(pVal);
    }
    sqlite3VdbeSetVarmask(pParse->pVdbe, iCol);
    assert( pRight->op==TK_VARIABLE || pRight->op==TK_REGISTER );
  }else if( op==TK_STRING ){
    z = (u8*)pRight->u.zToken;
  }
  if( z ){


    cnt = 0;
    while( (c=z[cnt])!=0 && c!=wc[0] && c!=wc[1] && c!=wc[2] ){
      cnt++;
      if( c==wc[3] && z[cnt]!=0 ) cnt++;
    }
    if( cnt!=0 && 255!=(u8)z[cnt-1] && (cnt>1 || z[0]!=wc[3]) ){
      Expr *pPrefix;


      *pisComplete = c==wc[0] && z[cnt+1]==0;


      pPrefix = sqlite3Expr(db, TK_STRING, (char*)z);
      if( pPrefix ){
        int iFrom, iTo;
        char *zNew = pPrefix->u.zToken;
        zNew[cnt] = 0;
        for(iFrom=iTo=0; iFrom<cnt; iFrom++){
          if( zNew[iFrom]==wc[3] ) iFrom++;
          zNew[iTo++] = zNew[iFrom];
        }
        zNew[iTo] = 0;
        if( sqlite3Isdigit(zNew[0])
         || zNew[0]=='-'
         || (zNew[0]+1=='0' && iTo==1)
        ){
          if( pLeft->op!=TK_COLUMN
           || sqlite3ExprAffinity(pLeft)!=SQLITE_AFF_TEXT
           || IsVirtual(pLeft->y.pTab)
          ){
            sqlite3ExprDelete(db, pPrefix);
            sqlite3ValueFree(pVal);
            return 0;
          }
        }
      }
      *ppPrefix = pPrefix;



      if( op==TK_VARIABLE ){
        Vdbe *v = pParse->pVdbe;
        sqlite3VdbeSetVarmask(v, pRight->iColumn);
        if( *pisComplete && pRight->u.zToken[1] ){






          int r1 = sqlite3GetTempReg(pParse);
          sqlite3ExprCodeTarget(pParse, pRight, r1);
          sqlite3VdbeChangeP3(v, sqlite3VdbeCurrentAddr(v)-1, 0);
          sqlite3ReleaseTempReg(pParse, r1);
        }
      }
    }else{
      z = 0;
    }
  }

  rc = (z!=0);
  sqlite3ValueFree(pVal);
  return rc;
}
