
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_9__ {scalar_t__ nRef; TYPE_5__* pFile; TYPE_1__** ppThis; TYPE_1__* pNext; } ;
typedef TYPE_3__ fs_real_file ;
struct TYPE_10__ {TYPE_3__* pReal; } ;
typedef TYPE_4__ fs_file ;
struct TYPE_11__ {TYPE_2__* pMethods; } ;
struct TYPE_8__ {int (* xClose ) (TYPE_5__*) ;} ;
struct TYPE_7__ {struct TYPE_7__** ppThis; } ;


 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3_free (TYPE_3__*) ;
 int stub1 (TYPE_5__*) ;

__attribute__((used)) static int fsClose(sqlite3_file *pFile){
  int rc = SQLITE_OK;
  fs_file *p = (fs_file *)pFile;
  fs_real_file *pReal = p->pReal;


  pReal->nRef--;
  assert(pReal->nRef>=0);


  if( pReal->nRef==0 ){
    *pReal->ppThis = pReal->pNext;
    if( pReal->pNext ){
      pReal->pNext->ppThis = pReal->ppThis;
    }
    rc = pReal->pFile->pMethods->xClose(pReal->pFile);
    sqlite3_free(pReal);
  }

  return rc;
}
