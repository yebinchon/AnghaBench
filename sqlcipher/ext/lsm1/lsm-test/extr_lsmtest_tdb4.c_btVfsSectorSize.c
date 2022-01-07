
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int bt_file ;
struct TYPE_4__ {int pFile; TYPE_1__* pVfs; } ;
struct TYPE_3__ {int (* xSectorSize ) (int ) ;} ;
typedef TYPE_2__ BtFile ;


 int stub1 (int ) ;

__attribute__((used)) static int btVfsSectorSize(bt_file *pFile){
  BtFile *p = (BtFile*)pFile;
  return p->pVfs->xSectorSize(p->pFile);
}
