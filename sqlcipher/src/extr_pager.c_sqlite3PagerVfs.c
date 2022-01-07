
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_3__ {int * pVfs; } ;
typedef TYPE_1__ Pager ;



sqlite3_vfs *sqlite3PagerVfs(Pager *pPager){
  return pPager->pVfs;
}
