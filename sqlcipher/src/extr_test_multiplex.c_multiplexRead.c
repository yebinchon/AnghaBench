
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_11__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_12__ {int szChunk; int bEnabled; } ;
typedef TYPE_3__ multiplexGroup ;
struct TYPE_13__ {TYPE_3__* pGroup; } ;
typedef TYPE_4__ multiplexConn ;
struct TYPE_10__ {int (* xRead ) (TYPE_2__*,void*,int,int) ;} ;


 int SQLITE_IOERR_READ ;
 int SQLITE_OK ;
 TYPE_2__* multiplexSubOpen (TYPE_3__*,int,int*,int *,int) ;
 int stub1 (TYPE_2__*,void*,int,int) ;
 int stub2 (TYPE_2__*,void*,int,int) ;

__attribute__((used)) static int multiplexRead(
  sqlite3_file *pConn,
  void *pBuf,
  int iAmt,
  sqlite3_int64 iOfst
){
  multiplexConn *p = (multiplexConn*)pConn;
  multiplexGroup *pGroup = p->pGroup;
  int rc = SQLITE_OK;
  if( !pGroup->bEnabled ){
    sqlite3_file *pSubOpen = multiplexSubOpen(pGroup, 0, &rc, ((void*)0), 0);
    if( pSubOpen==0 ){
      rc = SQLITE_IOERR_READ;
    }else{
      rc = pSubOpen->pMethods->xRead(pSubOpen, pBuf, iAmt, iOfst);
    }
  }else{
    while( iAmt > 0 ){
      int i = (int)(iOfst / pGroup->szChunk);
      sqlite3_file *pSubOpen;
      pSubOpen = multiplexSubOpen(pGroup, i, &rc, ((void*)0), 1);
      if( pSubOpen ){
        int extra = ((int)(iOfst % pGroup->szChunk) + iAmt) - pGroup->szChunk;
        if( extra<0 ) extra = 0;
        iAmt -= extra;
        rc = pSubOpen->pMethods->xRead(pSubOpen, pBuf, iAmt,
                                       iOfst % pGroup->szChunk);
        if( rc!=SQLITE_OK ) break;
        pBuf = (char *)pBuf + iAmt;
        iOfst += iAmt;
        iAmt = extra;
      }else{
        rc = SQLITE_IOERR_READ;
        break;
      }
    }
  }

  return rc;
}
