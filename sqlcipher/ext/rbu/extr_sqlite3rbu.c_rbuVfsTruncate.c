
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_file ;
struct TYPE_6__ {int openFlags; TYPE_3__* pReal; scalar_t__ pRbu; } ;
typedef TYPE_2__ rbu_file ;
struct TYPE_7__ {TYPE_1__* pMethods; } ;
struct TYPE_5__ {int (* xTruncate ) (TYPE_3__*,int ) ;} ;


 int SQLITE_OK ;
 int SQLITE_OPEN_DELETEONCLOSE ;
 int rbuUpdateTempSize (TYPE_2__*,int ) ;
 int stub1 (TYPE_3__*,int ) ;

__attribute__((used)) static int rbuVfsTruncate(sqlite3_file *pFile, sqlite_int64 size){
  rbu_file *p = (rbu_file*)pFile;
  if( (p->openFlags & SQLITE_OPEN_DELETEONCLOSE) && p->pRbu ){
    int rc = rbuUpdateTempSize(p, size);
    if( rc!=SQLITE_OK ) return rc;
  }
  return p->pReal->pMethods->xTruncate(p->pReal, size);
}
