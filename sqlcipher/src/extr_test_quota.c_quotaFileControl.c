
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_7__ {int (* xFileControl ) (TYPE_2__*,int,void*) ;} ;


 int SQLITE_FCNTL_VFSNAME ;
 int SQLITE_OK ;
 TYPE_2__* quotaSubOpen (TYPE_2__*) ;
 char* sqlite3_mprintf (char*,char*) ;
 int stub1 (TYPE_2__*,int,void*) ;

__attribute__((used)) static int quotaFileControl(sqlite3_file *pConn, int op, void *pArg){
  sqlite3_file *pSubOpen = quotaSubOpen(pConn);
  int rc = pSubOpen->pMethods->xFileControl(pSubOpen, op, pArg);





  return rc;
}
