
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_9__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_10__ {scalar_t__ iPgOne; } ;
struct TYPE_8__ {int (* xFileSize ) (TYPE_2__*,int *) ;} ;
typedef TYPE_3__ ApndFile ;


 scalar_t__ APND_MARK_SIZE ;
 TYPE_2__* ORIGFILE (TYPE_3__*) ;
 int SQLITE_OK ;
 int stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static int apndFileSize(sqlite3_file *pFile, sqlite_int64 *pSize){
  ApndFile *p = (ApndFile *)pFile;
  int rc;
  pFile = ORIGFILE(p);
  rc = pFile->pMethods->xFileSize(pFile, pSize);
  if( rc==SQLITE_OK && p->iPgOne ){
    *pSize -= p->iPgOne + APND_MARK_SIZE;
  }
  return rc;
}
