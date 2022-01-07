
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int notIndexed; int isIndexedBy; scalar_t__ isTabFunc; } ;
struct TYPE_10__ {int zIndexedBy; } ;
struct SrcList_item {TYPE_2__ fg; TYPE_1__ u1; } ;
struct TYPE_12__ {int n; int z; } ;
typedef TYPE_3__ Token ;
struct TYPE_14__ {int db; } ;
struct TYPE_13__ {int nSrc; struct SrcList_item* a; } ;
typedef TYPE_4__ SrcList ;
typedef TYPE_5__ Parse ;


 int assert (int) ;
 int sqlite3NameFromToken (int ,TYPE_3__*) ;

void sqlite3SrcListIndexedBy(Parse *pParse, SrcList *p, Token *pIndexedBy){
  assert( pIndexedBy!=0 );
  if( p && pIndexedBy->n>0 ){
    struct SrcList_item *pItem;
    assert( p->nSrc>0 );
    pItem = &p->a[p->nSrc-1];
    assert( pItem->fg.notIndexed==0 );
    assert( pItem->fg.isIndexedBy==0 );
    assert( pItem->fg.isTabFunc==0 );
    if( pIndexedBy->n==1 && !pIndexedBy->z ){


      pItem->fg.notIndexed = 1;
    }else{
      pItem->u1.zIndexedBy = sqlite3NameFromToken(pParse->db, pIndexedBy);
      pItem->fg.isIndexedBy = 1;
    }
  }
}
