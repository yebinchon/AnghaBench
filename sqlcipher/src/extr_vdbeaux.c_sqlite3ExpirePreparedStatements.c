
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* pVdbe; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_5__ {int expired; struct TYPE_5__* pNext; } ;
typedef TYPE_2__ Vdbe ;



void sqlite3ExpirePreparedStatements(sqlite3 *db, int iCode){
  Vdbe *p;
  for(p = db->pVdbe; p; p=p->pNext){
    p->expired = iCode+1;
  }
}
