
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_5__ {int tabFlags; } ;
typedef TYPE_1__ Table ;
struct TYPE_6__ {TYPE_1__* pEpoTab; } ;
typedef TYPE_2__ Module ;


 int TF_Ephemeral ;
 int sqlite3DeleteTable (int *,TYPE_1__*) ;

void sqlite3VtabEponymousTableClear(sqlite3 *db, Module *pMod){
  Table *pTab = pMod->pEpoTab;
  if( pTab!=0 ){



    pTab->tabFlags |= TF_Ephemeral;
    sqlite3DeleteTable(db, pTab);
    pMod->pEpoTab = 0;
  }
}
