
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_3__ {int * fd; } ;
typedef TYPE_1__ Pager ;



sqlite3_file *sqlite3PagerFile(Pager *pPager){
  return pPager->fd;
}
