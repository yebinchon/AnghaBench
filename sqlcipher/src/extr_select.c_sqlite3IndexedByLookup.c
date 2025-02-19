
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char* zIndexedBy; } ;
struct TYPE_8__ {scalar_t__ isIndexedBy; } ;
struct SrcList_item {TYPE_5__* pIBIndex; TYPE_2__ u1; TYPE_3__* pTab; TYPE_1__ fg; } ;
struct TYPE_10__ {TYPE_5__* pIndex; } ;
typedef TYPE_3__ Table ;
struct TYPE_12__ {struct TYPE_12__* pNext; int zName; } ;
struct TYPE_11__ {int checkSchema; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ Index ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int sqlite3ErrorMsg (TYPE_4__*,char*,char*,int ) ;
 scalar_t__ sqlite3StrICmp (int ,char*) ;

int sqlite3IndexedByLookup(Parse *pParse, struct SrcList_item *pFrom){
  if( pFrom->pTab && pFrom->fg.isIndexedBy ){
    Table *pTab = pFrom->pTab;
    char *zIndexedBy = pFrom->u1.zIndexedBy;
    Index *pIdx;
    for(pIdx=pTab->pIndex;
        pIdx && sqlite3StrICmp(pIdx->zName, zIndexedBy);
        pIdx=pIdx->pNext
    );
    if( !pIdx ){
      sqlite3ErrorMsg(pParse, "no such index: %s", zIndexedBy, 0);
      pParse->checkSchema = 1;
      return SQLITE_ERROR;
    }
    pFrom->pIBIndex = pIdx;
  }
  return SQLITE_OK;
}
