
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_Defensive ;
 int SQLITE_WriteSchema ;
 int testcase (int) ;

int sqlite3WritableSchema(sqlite3 *db){
  testcase( (db->flags&(SQLITE_WriteSchema|SQLITE_Defensive))==0 );
  testcase( (db->flags&(SQLITE_WriteSchema|SQLITE_Defensive))==
               SQLITE_WriteSchema );
  testcase( (db->flags&(SQLITE_WriteSchema|SQLITE_Defensive))==
               SQLITE_Defensive );
  testcase( (db->flags&(SQLITE_WriteSchema|SQLITE_Defensive))==
               (SQLITE_WriteSchema|SQLITE_Defensive) );
  return (db->flags&(SQLITE_WriteSchema|SQLITE_Defensive))==SQLITE_WriteSchema;
}
