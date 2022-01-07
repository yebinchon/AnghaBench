
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pSrc; int pDest; } ;
typedef TYPE_1__ sqlite3_backup ;


 int sqlite3BtreeGetPageSize (int ) ;
 int sqlite3BtreeSetPageSize (int ,int ,int,int ) ;

__attribute__((used)) static int setDestPgsz(sqlite3_backup *p){
  int rc;
  rc = sqlite3BtreeSetPageSize(p->pDest,sqlite3BtreeGetPageSize(p->pSrc),-1,0);
  return rc;
}
