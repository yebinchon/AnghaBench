
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_5__ {TYPE_2__* pCsrList; } ;
typedef TYPE_1__ ZipfileTab ;
struct TYPE_6__ {scalar_t__ iId; struct TYPE_6__* pCsrNext; } ;
typedef TYPE_2__ ZipfileCsr ;



__attribute__((used)) static ZipfileCsr *zipfileFindCursor(ZipfileTab *pTab, i64 iId){
  ZipfileCsr *pCsr;
  for(pCsr=pTab->pCsrList; pCsr; pCsr=pCsr->pCsrNext){
    if( iId==pCsr->iId ) break;
  }
  return pCsr;
}
