
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int member_0; } ;
struct TYPE_11__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int closedb (TYPE_2__*,TYPE_1__*) ;
 int execsql (TYPE_2__*,TYPE_1__*,char*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int,...) ;
 int timetostop (TYPE_2__*) ;

__attribute__((used)) static char *dynamic_triggers_1(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};
  int nDrop = 0;
  int nCreate = 0;

  opendb(&err, &db, "test.db", 0);
  while( !timetostop(&err) ){
    int i;

    for(i=1; i<9; i++){
      char *zSql = sqlite3_mprintf(
        "CREATE TRIGGER itr%d BEFORE INSERT ON t%d BEGIN "
          "INSERT INTO t%d VALUES(new.x, new.y);"
        "END;", i, i, i+1
      );
      execsql(&err, &db, zSql);
      sqlite3_free(zSql);
      nCreate++;
    }

    for(i=1; i<9; i++){
      char *zSql = sqlite3_mprintf(
        "CREATE TRIGGER dtr%d BEFORE DELETE ON t%d BEGIN "
          "DELETE FROM t%d WHERE x = old.x; "
        "END;", i, i, i+1
      );
      execsql(&err, &db, zSql);
      sqlite3_free(zSql);
      nCreate++;
    }

    for(i=1; i<9; i++){
      char *zSql = sqlite3_mprintf("DROP TRIGGER itr%d", i);
      execsql(&err, &db, zSql);
      sqlite3_free(zSql);
      nDrop++;
    }

    for(i=1; i<9; i++){
      char *zSql = sqlite3_mprintf("DROP TRIGGER dtr%d", i);
      execsql(&err, &db, zSql);
      sqlite3_free(zSql);
      nDrop++;
    }
  }
  closedb(&err, &db);

  print_and_free_err(&err);
  return sqlite3_mprintf("%d created, %d dropped", nCreate, nDrop);
}
