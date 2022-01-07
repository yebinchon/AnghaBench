
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; scalar_t__ bHandleVtab; } ;


 int SQLITE_OK ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 TYPE_1__ g ;
 int module_name_func ;
 int sqlite3_create_function (int ,char*,int,int ,int ,int ,int ,int ) ;
 int sqlite3_exec (int ,char*,int ,int ,int ) ;

const char *all_tables_sql(){
  if( g.bHandleVtab ){
    int rc;

    rc = sqlite3_exec(g.db,
        "CREATE TEMP TABLE tblmap(module COLLATE nocase, postfix);"
        "INSERT INTO temp.tblmap VALUES"
        "('fts3', '_content'), ('fts3', '_segments'), ('fts3', '_segdir'),"

        "('fts4', '_content'), ('fts4', '_segments'), ('fts4', '_segdir'),"
        "('fts4', '_docsize'), ('fts4', '_stat'),"

        "('fts5', '_data'), ('fts5', '_idx'), ('fts5', '_content'),"
        "('fts5', '_docsize'), ('fts5', '_config'),"

        "('rtree', '_node'), ('rtree', '_rowid'), ('rtree', '_parent');"
        , 0, 0, 0
    );
    assert( rc==SQLITE_OK );

    rc = sqlite3_create_function(
        g.db, "module_name", 1, SQLITE_UTF8, 0, module_name_func, 0, 0
    );
    assert( rc==SQLITE_OK );

    return
      "SELECT name FROM main.sqlite_master\n"
      " WHERE type='table' AND (\n"
      "    module_name(sql) IS NULL OR \n"
      "    module_name(sql) IN (SELECT module FROM temp.tblmap)\n"
      " ) AND name NOT IN (\n"
      "  SELECT a.name || b.postfix \n"
        "FROM main.sqlite_master AS a, temp.tblmap AS b \n"
        "WHERE module_name(a.sql) = b.module\n"
      " )\n"
      "UNION \n"
      "SELECT name FROM aux.sqlite_master\n"
      " WHERE type='table' AND (\n"
      "    module_name(sql) IS NULL OR \n"
      "    module_name(sql) IN (SELECT module FROM temp.tblmap)\n"
      " ) AND name NOT IN (\n"
      "  SELECT a.name || b.postfix \n"
        "FROM aux.sqlite_master AS a, temp.tblmap AS b \n"
        "WHERE module_name(a.sql) = b.module\n"
      " )\n"
      " ORDER BY name";
  }else{
    return
      "SELECT name FROM main.sqlite_master\n"
      " WHERE type='table' AND sql NOT LIKE 'CREATE VIRTUAL%%'\n"
      " UNION\n"
      "SELECT name FROM aux.sqlite_master\n"
      " WHERE type='table' AND sql NOT LIKE 'CREATE VIRTUAL%%'\n"
      " ORDER BY name";
  }
}
