
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int SQLITE_ABORT ;
 int SQLITE_FAIL ;
 int SQLITE_IGNORE ;
 int SQLITE_REPLACE ;
 int SQLITE_ROLLBACK ;
 int assert (int) ;
 int sqlite3_vtab_on_conflict (int *) ;

__attribute__((used)) static const char *spellfix1GetConflict(sqlite3 *db){
  static const char *azConflict[] = {

    "ROLLBACK", "IGNORE", "ABORT", "ABORT", "REPLACE"
  };
  int eConflict = sqlite3_vtab_on_conflict(db);

  assert( eConflict==SQLITE_ROLLBACK || eConflict==SQLITE_IGNORE
       || eConflict==SQLITE_FAIL || eConflict==SQLITE_ABORT
       || eConflict==SQLITE_REPLACE
  );
  assert( SQLITE_ROLLBACK==1 );
  assert( SQLITE_IGNORE==2 );
  assert( SQLITE_FAIL==3 );
  assert( SQLITE_ABORT==4 );
  assert( SQLITE_REPLACE==5 );

  return azConflict[eConflict-1];
}
