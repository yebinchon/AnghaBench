
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ noSharedCache; } ;
typedef TYPE_1__ sqlite3 ;


 int btreeLeaveAll (TYPE_1__*) ;

void sqlite3BtreeLeaveAll(sqlite3 *db){
  if( db->noSharedCache==0 ) btreeLeaveAll(db);
}
