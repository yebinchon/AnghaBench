
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* xGet ) (TYPE_1__*,int ,int **,int) ;} ;
typedef int Pgno ;
typedef TYPE_1__ Pager ;
typedef int DbPage ;


 int stub1 (TYPE_1__*,int ,int **,int) ;

int sqlite3PagerGet(
  Pager *pPager,
  Pgno pgno,
  DbPage **ppPage,
  int flags
){
  return pPager->xGet(pPager, pgno, ppPage, flags);
}
