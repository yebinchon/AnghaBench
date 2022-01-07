
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pgno; int pBt; } ;
typedef TYPE_1__ MemPage ;


 int SQLITE_OK ;
 int freePage2 (int ,TYPE_1__*,int ) ;

__attribute__((used)) static void freePage(MemPage *pPage, int *pRC){
  if( (*pRC)==SQLITE_OK ){
    *pRC = freePage2(pPage->pBt, pPage, pPage->pgno);
  }
}
