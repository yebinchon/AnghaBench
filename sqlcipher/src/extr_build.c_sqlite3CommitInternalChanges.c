
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mDbFlags; } ;
typedef TYPE_1__ sqlite3 ;


 int DBFLAG_SchemaChange ;

void sqlite3CommitInternalChanges(sqlite3 *db){
  db->mDbFlags &= ~DBFLAG_SchemaChange;
}
