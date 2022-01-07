
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pnBytesFreed; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_8__ {scalar_t__ nTabRef; } ;
typedef TYPE_2__ Table ;


 int deleteTable (TYPE_1__*,TYPE_2__*) ;

void sqlite3DeleteTable(sqlite3 *db, Table *pTable){

  if( !pTable ) return;
  if( ((!db || db->pnBytesFreed==0) && (--pTable->nTabRef)>0) ) return;
  deleteTable(db, pTable);
}
