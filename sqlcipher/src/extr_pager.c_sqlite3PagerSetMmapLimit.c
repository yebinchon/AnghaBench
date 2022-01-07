
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_4__ {int szMmap; } ;
typedef TYPE_1__ Pager ;


 int pagerFixMaplimit (TYPE_1__*) ;

void sqlite3PagerSetMmapLimit(Pager *pPager, sqlite3_int64 szMmap){
  pPager->szMmap = szMmap;
  pagerFixMaplimit(pPager);
}
