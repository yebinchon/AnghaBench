
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


struct TYPE_16__ {scalar_t__ mxFrame; struct TYPE_16__* aSalt; } ;
typedef TYPE_1__ WalIndexHdr ;
struct TYPE_17__ {scalar_t__* aReadMark; scalar_t__ nBackfillAttempted; } ;
typedef TYPE_2__ WalCkptInfo ;
struct TYPE_15__ {scalar_t__ mxFrame; struct TYPE_15__* aSalt; } ;
struct TYPE_18__ {size_t readLock; int minFrame; TYPE_11__ hdr; TYPE_1__* pSnapshot; } ;
typedef TYPE_3__ Wal ;


 int SQLITE_BUSY ;
 int SQLITE_ERROR_SNAPSHOT ;
 int SQLITE_IOERR ;
 int SQLITE_OK ;
 int SQLITE_PROTOCOL ;
 int WAL_CKPT_LOCK ;
 int WAL_RETRY ;
 int assert (int) ;
 scalar_t__ memcmp (TYPE_1__*,TYPE_11__*,int) ;
 int memcpy (TYPE_11__*,TYPE_1__*,int) ;
 int sqlite3WalEndReadTransaction (TYPE_3__*) ;
 int testcase (int) ;
 TYPE_2__* walCkptInfo (TYPE_3__*) ;
 int walLockShared (TYPE_3__*,int ) ;
 int walTryBeginRead (TYPE_3__*,int*,int ,int) ;
 int walUnlockShared (TYPE_3__*,int ) ;

int sqlite3WalBeginReadTransaction(Wal *pWal, int *pChanged){
  int rc;
  int cnt = 0;
  do{
    rc = walTryBeginRead(pWal, pChanged, 0, ++cnt);
  }while( rc==WAL_RETRY );
  testcase( (rc&0xff)==SQLITE_BUSY );
  testcase( (rc&0xff)==SQLITE_IOERR );
  testcase( rc==SQLITE_PROTOCOL );
  testcase( rc==SQLITE_OK );
  return rc;
}
