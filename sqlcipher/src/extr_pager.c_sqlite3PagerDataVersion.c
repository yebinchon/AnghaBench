
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int iDataVersion; } ;
typedef TYPE_1__ Pager ;



u32 sqlite3PagerDataVersion(Pager *pPager){
  return pPager->iDataVersion;
}
