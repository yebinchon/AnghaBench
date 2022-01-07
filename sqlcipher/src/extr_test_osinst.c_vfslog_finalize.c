
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__* pLog; } ;
typedef TYPE_2__ VfslogVfs ;
struct TYPE_9__ {TYPE_1__* pMethods; } ;
struct TYPE_7__ {int (* xClose ) (TYPE_5__*) ;} ;


 int sqlite3_free (TYPE_2__*) ;
 int stub1 (TYPE_5__*) ;
 int vfslog_flush (TYPE_2__*) ;

__attribute__((used)) static void vfslog_finalize(VfslogVfs *p){
  if( p->pLog->pMethods ){
    vfslog_flush(p);
    p->pLog->pMethods->xClose(p->pLog);
  }
  sqlite3_free(p);
}
