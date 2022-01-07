
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef char const sqlite3_stmt ;
struct TYPE_3__ {char const** aStmt; int db; int zName; int zDb; int zReadExprlist; int zWriteExprlist; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_PREPARE_NO_VTAB ;
 int SQLITE_PREPARE_PERSISTENT ;
 int SQL_CONTENT_INSERT ;
 int SQL_SELECT_CONTENT_BY_ROWID ;
 int SizeofArray (char const**) ;
 int assert (int) ;
 int sqlite3_bind_parameter_count (char const*) ;
 int sqlite3_bind_value (char const*,int,int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char const*,int ,...) ;
 int sqlite3_prepare_v3 (int ,char*,int,int,char const**,int *) ;

__attribute__((used)) static int fts3SqlStmt(
  Fts3Table *p,
  int eStmt,
  sqlite3_stmt **pp,
  sqlite3_value **apVal
){
  const char *azSql[] = {
          "DELETE FROM %Q.'%q_content' WHERE rowid = ?",
          "SELECT NOT EXISTS(SELECT docid FROM %Q.'%q_content' WHERE rowid!=?)",
          "DELETE FROM %Q.'%q_content'",
          "DELETE FROM %Q.'%q_segments'",
          "DELETE FROM %Q.'%q_segdir'",
          "DELETE FROM %Q.'%q_docsize'",
          "DELETE FROM %Q.'%q_stat'",
          "SELECT %s WHERE rowid=?",
          "SELECT (SELECT max(idx) FROM %Q.'%q_segdir' WHERE level = ?) + 1",
          "REPLACE INTO %Q.'%q_segments'(blockid, block) VALUES(?, ?)",
          "SELECT coalesce((SELECT max(blockid) FROM %Q.'%q_segments') + 1, 1)",
          "REPLACE INTO %Q.'%q_segdir' VALUES(?,?,?,?,?,?)",


          "SELECT idx, start_block, leaves_end_block, end_block, root "
            "FROM %Q.'%q_segdir' WHERE level = ? ORDER BY idx ASC",
          "SELECT idx, start_block, leaves_end_block, end_block, root "
            "FROM %Q.'%q_segdir' WHERE level BETWEEN ? AND ?"
            "ORDER BY level DESC, idx ASC",

          "SELECT count(*) FROM %Q.'%q_segdir' WHERE level = ?",
          "SELECT max(level) FROM %Q.'%q_segdir' WHERE level BETWEEN ? AND ?",

          "DELETE FROM %Q.'%q_segdir' WHERE level = ?",
          "DELETE FROM %Q.'%q_segments' WHERE blockid BETWEEN ? AND ?",
          "INSERT INTO %Q.'%q_content' VALUES(%s)",
          "DELETE FROM %Q.'%q_docsize' WHERE docid = ?",
          "REPLACE INTO %Q.'%q_docsize' VALUES(?,?)",
          "SELECT size FROM %Q.'%q_docsize' WHERE docid=?",
          "SELECT value FROM %Q.'%q_stat' WHERE id=?",
          "REPLACE INTO %Q.'%q_stat' VALUES(?,?)",
          "",
          "",

         "DELETE FROM %Q.'%q_segdir' WHERE level BETWEEN ? AND ?",
         "SELECT ? UNION SELECT level / (1024 * ?) FROM %Q.'%q_segdir'",






         "SELECT level, count(*) AS cnt FROM %Q.'%q_segdir' "
         "  GROUP BY level HAVING cnt>=?"
         "  ORDER BY (level %% 1024) ASC LIMIT 1",




         "SELECT 2 * total(1 + leaves_end_block - start_block) "
         "  FROM %Q.'%q_segdir' WHERE level = ? AND idx < ?",



         "DELETE FROM %Q.'%q_segdir' WHERE level = ? AND idx = ?",




         "UPDATE %Q.'%q_segdir' SET idx = ? WHERE level=? AND idx=?",




          "SELECT idx, start_block, leaves_end_block, end_block, root "
            "FROM %Q.'%q_segdir' WHERE level = ? AND idx = ?",




          "UPDATE %Q.'%q_segdir' SET start_block = ?, root = ?"
            "WHERE level = ? AND idx = ?",




          "SELECT 1 FROM %Q.'%q_segments' WHERE blockid=? AND block IS NULL",



          "SELECT idx FROM %Q.'%q_segdir' WHERE level=? ORDER BY 1 ASC",



          "SELECT max( level %% 1024 ) FROM %Q.'%q_segdir'",


          "SELECT level, idx, end_block "
            "FROM %Q.'%q_segdir' WHERE level BETWEEN ? AND ? "
            "ORDER BY level DESC, idx ASC",


          "UPDATE OR FAIL %Q.'%q_segdir' SET level=-1,idx=? "
            "WHERE level=? AND idx=?",
          "UPDATE OR FAIL %Q.'%q_segdir' SET level=? WHERE level=-1"

  };
  int rc = SQLITE_OK;
  sqlite3_stmt *pStmt;

  assert( SizeofArray(azSql)==SizeofArray(p->aStmt) );
  assert( eStmt<SizeofArray(azSql) && eStmt>=0 );

  pStmt = p->aStmt[eStmt];
  if( !pStmt ){
    int f = SQLITE_PREPARE_PERSISTENT|SQLITE_PREPARE_NO_VTAB;
    char *zSql;
    if( eStmt==SQL_CONTENT_INSERT ){
      zSql = sqlite3_mprintf(azSql[eStmt], p->zDb, p->zName, p->zWriteExprlist);
    }else if( eStmt==SQL_SELECT_CONTENT_BY_ROWID ){
      f &= ~SQLITE_PREPARE_NO_VTAB;
      zSql = sqlite3_mprintf(azSql[eStmt], p->zReadExprlist);
    }else{
      zSql = sqlite3_mprintf(azSql[eStmt], p->zDb, p->zName);
    }
    if( !zSql ){
      rc = SQLITE_NOMEM;
    }else{
      rc = sqlite3_prepare_v3(p->db, zSql, -1, f, &pStmt, ((void*)0));
      sqlite3_free(zSql);
      assert( rc==SQLITE_OK || pStmt==0 );
      p->aStmt[eStmt] = pStmt;
    }
  }
  if( apVal ){
    int i;
    int nParam = sqlite3_bind_parameter_count(pStmt);
    for(i=0; rc==SQLITE_OK && i<nParam; i++){
      rc = sqlite3_bind_value(pStmt, i+1, apVal[i]);
    }
  }
  *pp = pStmt;
  return rc;
}
