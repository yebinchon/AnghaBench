
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errCode; int eState; } ;
typedef TYPE_1__ Pager ;


 int MEMDB ;
 int PAGER_ERROR ;
 int SQLITE_FULL ;
 int SQLITE_IOERR ;
 int SQLITE_OK ;
 int assert (int) ;
 int setGetterMethod (TYPE_1__*) ;

__attribute__((used)) static int pager_error(Pager *pPager, int rc){
  int rc2 = rc & 0xff;
  assert( rc==SQLITE_OK || !MEMDB );
  assert(
       pPager->errCode==SQLITE_FULL ||
       pPager->errCode==SQLITE_OK ||
       (pPager->errCode & 0xff)==SQLITE_IOERR
  );
  if( rc2==SQLITE_FULL || rc2==SQLITE_IOERR ){
    pPager->errCode = rc;
    pPager->eState = PAGER_ERROR;
    setGetterMethod(pPager);
  }
  return rc;
}
