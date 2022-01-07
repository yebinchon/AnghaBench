
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_3__ {int * jfd; scalar_t__ pWal; } ;
typedef TYPE_1__ Pager ;


 int * sqlite3WalFile (scalar_t__) ;

sqlite3_file *sqlite3PagerJrnlFile(Pager *pPager){



  return pPager->pWal ? sqlite3WalFile(pPager->pWal) : pPager->jfd;

}
