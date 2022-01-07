
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int sqlite3_value ;
typedef scalar_t__ sqlite3_int64 ;


 int SQLITE_ERROR ;
 scalar_t__ SQLITE_INTEGER ;
 int SQLITE_OK ;
 scalar_t__ VFSSTAT_MXCNT ;
 int VSTAT_COLUMN_COUNT ;
 scalar_t__* aVfsCnt ;
 scalar_t__ sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static int vstattabUpdate(
  sqlite3_vtab *tab,
  int argc, sqlite3_value **argv,
  sqlite3_int64 *pRowid
){
  sqlite3_int64 iRowid, x;
  if( argc==1 ) return SQLITE_ERROR;
  if( sqlite3_value_type(argv[0])!=SQLITE_INTEGER ) return SQLITE_ERROR;
  iRowid = sqlite3_value_int64(argv[0]);
  if( iRowid!=sqlite3_value_int64(argv[1]) ) return SQLITE_ERROR;
  if( iRowid<0 || iRowid>=VFSSTAT_MXCNT ) return SQLITE_ERROR;
  if( sqlite3_value_type(argv[VSTAT_COLUMN_COUNT+2])!=SQLITE_INTEGER ){
    return SQLITE_ERROR;
  }
  x = sqlite3_value_int64(argv[VSTAT_COLUMN_COUNT+2]);
  if( x<0 ) return SQLITE_ERROR;
  aVfsCnt[iRowid] = x;
  return SQLITE_OK;
}
