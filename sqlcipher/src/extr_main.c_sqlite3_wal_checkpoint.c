
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int SQLITE_CHECKPOINT_PASSIVE ;
 int sqlite3_wal_checkpoint_v2 (int *,char const*,int ,int ,int ) ;

int sqlite3_wal_checkpoint(sqlite3 *db, const char *zDb){


  return sqlite3_wal_checkpoint_v2(db,zDb,SQLITE_CHECKPOINT_PASSIVE,0,0);
}
