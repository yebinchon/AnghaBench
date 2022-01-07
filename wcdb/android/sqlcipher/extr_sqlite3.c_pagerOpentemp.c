
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_3__ {int pVfs; } ;
typedef TYPE_1__ Pager ;


 int SQLITE_OK ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_DELETEONCLOSE ;
 int SQLITE_OPEN_EXCLUSIVE ;
 int SQLITE_OPEN_READWRITE ;
 int assert (int) ;
 scalar_t__ isOpen (int *) ;
 int sqlite3OsOpen (int ,int ,int *,int,int ) ;
 int sqlite3_opentemp_count ;

__attribute__((used)) static int pagerOpentemp(
  Pager *pPager,
  sqlite3_file *pFile,
  int vfsFlags
){
  int rc;





  vfsFlags |= SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE |
            SQLITE_OPEN_EXCLUSIVE | SQLITE_OPEN_DELETEONCLOSE;
  rc = sqlite3OsOpen(pPager->pVfs, 0, pFile, vfsFlags, 0);
  assert( rc!=SQLITE_OK || isOpen(pFile) );
  return rc;
}
