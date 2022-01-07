
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int zVfsName; } ;
typedef TYPE_3__ vfstrace_info ;
struct TYPE_9__ {scalar_t__ pMethods; } ;
struct TYPE_11__ {TYPE_2__ base; TYPE_7__* pReal; int zFName; TYPE_3__* pInfo; } ;
typedef TYPE_4__ vfstrace_file ;
typedef int sqlite3_file ;
struct TYPE_12__ {TYPE_1__* pMethods; } ;
struct TYPE_8__ {int (* xClose ) (TYPE_7__*) ;} ;


 int SQLITE_OK ;
 int sqlite3_free (void*) ;
 int stub1 (TYPE_7__*) ;
 int vfstrace_print_errcode (TYPE_3__*,char*,int) ;
 int vfstrace_printf (TYPE_3__*,char*,int ,int ) ;

__attribute__((used)) static int vfstraceClose(sqlite3_file *pFile){
  vfstrace_file *p = (vfstrace_file *)pFile;
  vfstrace_info *pInfo = p->pInfo;
  int rc;
  vfstrace_printf(pInfo, "%s.xClose(%s)", pInfo->zVfsName, p->zFName);
  rc = p->pReal->pMethods->xClose(p->pReal);
  vfstrace_print_errcode(pInfo, " -> %s\n", rc);
  if( rc==SQLITE_OK ){
    sqlite3_free((void*)p->base.pMethods);
    p->base.pMethods = 0;
  }
  return rc;
}
