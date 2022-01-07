
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_5__ {TYPE_3__* pReal; } ;
typedef TYPE_2__ VStatFile ;
struct TYPE_6__ {TYPE_1__* pMethods; } ;
struct TYPE_4__ {int (* xShmBarrier ) (TYPE_3__*) ;} ;


 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void vstatShmBarrier(sqlite3_file *pFile){
  VStatFile *p = (VStatFile *)pFile;
  p->pReal->pMethods->xShmBarrier(p->pReal);
}
