
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_11__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_12__ {scalar_t__ szChunk; int bEnabled; } ;
typedef TYPE_3__ multiplexGroup ;
struct TYPE_13__ {TYPE_3__* pGroup; } ;
typedef TYPE_4__ multiplexConn ;
struct TYPE_10__ {int (* xFileSize ) (TYPE_2__*,scalar_t__*) ;} ;


 int SQLITE_IOERR_FSTAT ;
 int SQLITE_OK ;
 TYPE_2__* multiplexSubOpen (TYPE_3__*,int ,int*,int *,int ) ;
 scalar_t__ multiplexSubSize (TYPE_3__*,int,int*) ;
 int stub1 (TYPE_2__*,scalar_t__*) ;

__attribute__((used)) static int multiplexFileSize(sqlite3_file *pConn, sqlite3_int64 *pSize){
  multiplexConn *p = (multiplexConn*)pConn;
  multiplexGroup *pGroup = p->pGroup;
  int rc = SQLITE_OK;
  int i;
  if( !pGroup->bEnabled ){
    sqlite3_file *pSubOpen = multiplexSubOpen(pGroup, 0, &rc, ((void*)0), 0);
    if( pSubOpen==0 ){
      rc = SQLITE_IOERR_FSTAT;
    }else{
      rc = pSubOpen->pMethods->xFileSize(pSubOpen, pSize);
    }
  }else{
    *pSize = 0;
    for(i=0; rc==SQLITE_OK; i++){
      sqlite3_int64 sz = multiplexSubSize(pGroup, i, &rc);
      if( sz==0 ) break;
      *pSize = i*(sqlite3_int64)pGroup->szChunk + sz;
    }
  }
  return rc;
}
