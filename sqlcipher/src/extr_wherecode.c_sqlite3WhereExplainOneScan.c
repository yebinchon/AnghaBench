
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;


typedef int zBuf ;
typedef int u32 ;
typedef int u16 ;
struct SrcList_item {char const* zName; char const* zAlias; int pTab; TYPE_1__* pSelect; } ;
typedef int sqlite3 ;
struct TYPE_20__ {int idxStr; int idxNum; } ;
struct TYPE_19__ {scalar_t__ nEq; TYPE_9__* pIndex; } ;
struct TYPE_21__ {TYPE_3__ vtab; TYPE_2__ btree; } ;
struct TYPE_22__ {int wsFlags; int nOut; TYPE_4__ u; } ;
typedef TYPE_5__ WhereLoop ;
struct TYPE_23__ {size_t iFrom; TYPE_5__* pWLoop; } ;
typedef TYPE_6__ WhereLevel ;
typedef int Vdbe ;
struct TYPE_26__ {char const* zName; } ;
struct TYPE_25__ {int addrExplain; int * db; int * pVdbe; } ;
struct TYPE_24__ {struct SrcList_item* a; } ;
struct TYPE_18__ {char const* selId; } ;
struct TYPE_17__ {int explain; } ;
typedef int StrAccum ;
typedef TYPE_7__ SrcList ;
typedef TYPE_8__ Parse ;
typedef TYPE_9__ Index ;


 int HasRowid (int ) ;
 scalar_t__ IsPrimaryKeyIndex (TYPE_9__*) ;
 int OP_Explain ;
 int P4_DYNAMIC ;
 int SQLITE_MAX_LENGTH ;
 int WHERE_AUTO_INDEX ;
 int WHERE_BOTH_LIMIT ;
 int WHERE_BTM_LIMIT ;
 int WHERE_COLUMN_EQ ;
 int WHERE_COLUMN_IN ;
 int WHERE_CONSTRAINT ;
 int WHERE_IDX_ONLY ;
 int WHERE_IPK ;
 int WHERE_MULTI_OR ;
 int WHERE_ORDERBY_MAX ;
 int WHERE_ORDERBY_MIN ;
 int WHERE_OR_SUBCLAUSE ;
 int WHERE_PARTIALIDX ;
 int WHERE_TOP_LIMIT ;
 int WHERE_VIRTUALTABLE ;
 int assert (int) ;
 int explainIndexRange (int *,TYPE_5__*) ;
 int sqlite3ExplainBreakpoint (char*,char*) ;
 char const* sqlite3LogEstToInt (int) ;
 TYPE_13__* sqlite3ParseToplevel (TYPE_8__*) ;
 char* sqlite3StrAccumFinish (int *) ;
 int sqlite3StrAccumInit (int *,int *,char*,int,int ) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int ,int ,char*,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3_str_append (int *,char*,int) ;
 int sqlite3_str_appendall (int *,char*) ;
 int sqlite3_str_appendf (int *,char const*,char const*,...) ;

int sqlite3WhereExplainOneScan(
  Parse *pParse,
  SrcList *pTabList,
  WhereLevel *pLevel,
  u16 wctrlFlags
){
  int ret = 0;

  if( sqlite3ParseToplevel(pParse)->explain==2 )

  {
    struct SrcList_item *pItem = &pTabList->a[pLevel->iFrom];
    Vdbe *v = pParse->pVdbe;
    sqlite3 *db = pParse->db;
    int isSearch;
    WhereLoop *pLoop;
    u32 flags;
    char *zMsg;
    StrAccum str;
    char zBuf[100];

    pLoop = pLevel->pWLoop;
    flags = pLoop->wsFlags;
    if( (flags&WHERE_MULTI_OR) || (wctrlFlags&WHERE_OR_SUBCLAUSE) ) return 0;

    isSearch = (flags&(WHERE_BTM_LIMIT|WHERE_TOP_LIMIT))!=0
            || ((flags&WHERE_VIRTUALTABLE)==0 && (pLoop->u.btree.nEq>0))
            || (wctrlFlags&(WHERE_ORDERBY_MIN|WHERE_ORDERBY_MAX));

    sqlite3StrAccumInit(&str, db, zBuf, sizeof(zBuf), SQLITE_MAX_LENGTH);
    sqlite3_str_appendall(&str, isSearch ? "SEARCH" : "SCAN");
    if( pItem->pSelect ){
      sqlite3_str_appendf(&str, " SUBQUERY %u", pItem->pSelect->selId);
    }else{
      sqlite3_str_appendf(&str, " TABLE %s", pItem->zName);
    }

    if( pItem->zAlias ){
      sqlite3_str_appendf(&str, " AS %s", pItem->zAlias);
    }
    if( (flags & (WHERE_IPK|WHERE_VIRTUALTABLE))==0 ){
      const char *zFmt = 0;
      Index *pIdx;

      assert( pLoop->u.btree.pIndex!=0 );
      pIdx = pLoop->u.btree.pIndex;
      assert( !(flags&WHERE_AUTO_INDEX) || (flags&WHERE_IDX_ONLY) );
      if( !HasRowid(pItem->pTab) && IsPrimaryKeyIndex(pIdx) ){
        if( isSearch ){
          zFmt = "PRIMARY KEY";
        }
      }else if( flags & WHERE_PARTIALIDX ){
        zFmt = "AUTOMATIC PARTIAL COVERING INDEX";
      }else if( flags & WHERE_AUTO_INDEX ){
        zFmt = "AUTOMATIC COVERING INDEX";
      }else if( flags & WHERE_IDX_ONLY ){
        zFmt = "COVERING INDEX %s";
      }else{
        zFmt = "INDEX %s";
      }
      if( zFmt ){
        sqlite3_str_append(&str, " USING ", 7);
        sqlite3_str_appendf(&str, zFmt, pIdx->zName);
        explainIndexRange(&str, pLoop);
      }
    }else if( (flags & WHERE_IPK)!=0 && (flags & WHERE_CONSTRAINT)!=0 ){
      const char *zRangeOp;
      if( flags&(WHERE_COLUMN_EQ|WHERE_COLUMN_IN) ){
        zRangeOp = "=";
      }else if( (flags&WHERE_BOTH_LIMIT)==WHERE_BOTH_LIMIT ){
        zRangeOp = ">? AND rowid<";
      }else if( flags&WHERE_BTM_LIMIT ){
        zRangeOp = ">";
      }else{
        assert( flags&WHERE_TOP_LIMIT);
        zRangeOp = "<";
      }
      sqlite3_str_appendf(&str,
          " USING INTEGER PRIMARY KEY (rowid%s?)",zRangeOp);
    }

    else if( (flags & WHERE_VIRTUALTABLE)!=0 ){
      sqlite3_str_appendf(&str, " VIRTUAL TABLE INDEX %d:%s",
                  pLoop->u.vtab.idxNum, pLoop->u.vtab.idxStr);
    }
    zMsg = sqlite3StrAccumFinish(&str);
    sqlite3ExplainBreakpoint("",zMsg);
    ret = sqlite3VdbeAddOp4(v, OP_Explain, sqlite3VdbeCurrentAddr(v),
                            pParse->addrExplain, 0, zMsg,P4_DYNAMIC);
  }
  return ret;
}
