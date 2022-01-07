
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_9__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_10__ {scalar_t__ szMmap; int bUseFetch; TYPE_2__* fd; } ;
struct TYPE_8__ {int iVersion; } ;
typedef TYPE_3__ Pager ;


 int SQLITE_FCNTL_MMAP_SIZE ;
 scalar_t__ isOpen (TYPE_2__*) ;
 int setGetterMethod (TYPE_3__*) ;
 int sqlite3OsFileControlHint (TYPE_2__*,int ,scalar_t__*) ;

__attribute__((used)) static void pagerFixMaplimit(Pager *pPager){
}
