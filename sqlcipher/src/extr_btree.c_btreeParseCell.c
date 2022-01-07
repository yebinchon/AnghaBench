
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* xParseCell ) (TYPE_1__*,int ,int *) ;} ;
typedef TYPE_1__ MemPage ;
typedef int CellInfo ;


 int findCell (TYPE_1__*,int) ;
 int stub1 (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void btreeParseCell(
  MemPage *pPage,
  int iCell,
  CellInfo *pInfo
){
  pPage->xParseCell(pPage, findCell(pPage, iCell), pInfo);
}
