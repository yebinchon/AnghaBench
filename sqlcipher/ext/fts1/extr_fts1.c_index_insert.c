
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_value ;
struct TYPE_5__ {int db; } ;
typedef TYPE_1__ fulltext_vtab ;
typedef int fts1Hash ;


 int SQLITE_OK ;
 int content_insert (TYPE_1__*,int *,int **) ;
 int insertTerms (TYPE_1__*,int *,int ,int **) ;
 int sqlite3_last_insert_rowid (int ) ;

__attribute__((used)) static int index_insert(fulltext_vtab *v, sqlite3_value *pRequestRowid,
                        sqlite3_value **pValues,
                        sqlite_int64 *piRowid, fts1Hash *pTerms){
  int rc;

  rc = content_insert(v, pRequestRowid, pValues);
  if( rc!=SQLITE_OK ) return rc;
  *piRowid = sqlite3_last_insert_rowid(v->db);
  return insertTerms(v, pTerms, *piRowid, pValues);
}
