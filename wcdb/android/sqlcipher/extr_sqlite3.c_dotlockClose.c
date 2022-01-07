
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lockingContext; } ;
typedef TYPE_1__ unixFile ;
typedef int sqlite3_file ;


 int NO_LOCK ;
 int assert (int) ;
 int closeUnixFile (int *) ;
 int dotlockUnlock (int *,int ) ;
 int sqlite3_free (int ) ;

__attribute__((used)) static int dotlockClose(sqlite3_file *id) {
  unixFile *pFile = (unixFile*)id;
  assert( id!=0 );
  dotlockUnlock(id, NO_LOCK);
  sqlite3_free(pFile->lockingContext);
  return closeUnixFile(id);
}
