
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sqlite3_value ;
struct TYPE_13__ {int apSqlParam; int aParam; int nParam; int pContext; } ;
typedef TYPE_3__ sqlite3_rtree_query_info ;
struct TYPE_11__ {int xQueryFunc; scalar_t__ xGeom; } ;
struct TYPE_15__ {TYPE_3__* pInfo; TYPE_1__ u; int op; } ;
struct TYPE_12__ {int xQueryFunc; scalar_t__ xGeom; int pContext; } ;
struct TYPE_14__ {TYPE_2__ cb; int apSqlParam; int aParam; int nParam; scalar_t__ iSize; } ;
typedef TYPE_4__ RtreeMatchArg ;
typedef TYPE_5__ RtreeConstraint ;


 int RTREE_QUERY ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memcpy (TYPE_4__*,TYPE_4__*,scalar_t__) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ sqlite3_malloc64 (scalar_t__) ;
 TYPE_4__* sqlite3_value_pointer (int *,char*) ;

__attribute__((used)) static int deserializeGeometry(sqlite3_value *pValue, RtreeConstraint *pCons){
  RtreeMatchArg *pBlob, *pSrc;
  sqlite3_rtree_query_info *pInfo;

  pSrc = sqlite3_value_pointer(pValue, "RtreeMatchArg");
  if( pSrc==0 ) return SQLITE_ERROR;
  pInfo = (sqlite3_rtree_query_info*)
                sqlite3_malloc64( sizeof(*pInfo)+pSrc->iSize );
  if( !pInfo ) return SQLITE_NOMEM;
  memset(pInfo, 0, sizeof(*pInfo));
  pBlob = (RtreeMatchArg*)&pInfo[1];
  memcpy(pBlob, pSrc, pSrc->iSize);
  pInfo->pContext = pBlob->cb.pContext;
  pInfo->nParam = pBlob->nParam;
  pInfo->aParam = pBlob->aParam;
  pInfo->apSqlParam = pBlob->apSqlParam;

  if( pBlob->cb.xGeom ){
    pCons->u.xGeom = pBlob->cb.xGeom;
  }else{
    pCons->op = RTREE_QUERY;
    pCons->u.xQueryFunc = pBlob->cb.xQueryFunc;
  }
  pCons->pInfo = pInfo;
  return SQLITE_OK;
}
