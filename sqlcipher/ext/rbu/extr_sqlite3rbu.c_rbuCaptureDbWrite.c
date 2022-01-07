
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int nFrame; int pgsz; TYPE_1__* aFrame; } ;
typedef TYPE_2__ sqlite3rbu ;
typedef int i64 ;
struct TYPE_4__ {scalar_t__ iDbPage; } ;


 int SQLITE_OK ;

__attribute__((used)) static int rbuCaptureDbWrite(sqlite3rbu *pRbu, i64 iOff){
  pRbu->aFrame[pRbu->nFrame-1].iDbPage = (u32)(iOff / pRbu->pgsz) + 1;
  return SQLITE_OK;
}
