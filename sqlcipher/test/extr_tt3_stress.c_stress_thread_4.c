
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ rc; int member_0; } ;
struct TYPE_12__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int PTR2INT (void*) ;
 int SQLITE_ERROR ;
 int SQLITE_LOCKED ;
 int clear_error (TYPE_2__*,int ) ;
 int closedb (TYPE_2__*,TYPE_1__*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 int sql_script (TYPE_2__*,TYPE_1__*,char*) ;
 char* sqlite3_mprintf (char*,int,int) ;
 int timetostop (TYPE_2__*) ;

__attribute__((used)) static char *stress_thread_4(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};
  int i1 = 0;
  int i2 = 0;
  int iArg = PTR2INT(pArg);

  opendb(&err, &db, "test.db", 0);
  while( !timetostop(&err) ){
    if( iArg ){
      closedb(&err, &db);
      opendb(&err, &db, "test.db", 0);
    }
    sql_script(&err, &db,
        "WITH loop(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM loop LIMIT 200) "
        "INSERT INTO t1 VALUES(randomblob(60), randomblob(60));"
    );
    i1++;
    if( err.rc ) i2++;
    clear_error(&err, SQLITE_LOCKED);
    clear_error(&err, SQLITE_ERROR);
  }
  closedb(&err, &db);
  print_and_free_err(&err);
  return sqlite3_mprintf("wrote t1 %d/%d attempts", i2, i1);
}
