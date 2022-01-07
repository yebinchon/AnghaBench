
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ notIndexed; scalar_t__ isIndexedBy; int isTabFunc; } ;
struct TYPE_7__ {int * pFuncArg; } ;
struct SrcList_item {TYPE_2__ fg; TYPE_1__ u1; } ;
struct TYPE_10__ {int db; } ;
struct TYPE_9__ {int nSrc; struct SrcList_item* a; } ;
typedef TYPE_3__ SrcList ;
typedef TYPE_4__ Parse ;
typedef int ExprList ;


 int assert (int) ;
 int sqlite3ExprListDelete (int ,int *) ;

void sqlite3SrcListFuncArgs(Parse *pParse, SrcList *p, ExprList *pList){
  if( p ){
    struct SrcList_item *pItem = &p->a[p->nSrc-1];
    assert( pItem->fg.notIndexed==0 );
    assert( pItem->fg.isIndexedBy==0 );
    assert( pItem->fg.isTabFunc==0 );
    pItem->u1.pFuncArg = pList;
    pItem->fg.isTabFunc = 1;
  }else{
    sqlite3ExprListDelete(pParse->db, pList);
  }
}
