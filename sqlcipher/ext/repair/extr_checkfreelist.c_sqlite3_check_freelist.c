
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int checkFreelist (int *,char const*,int ) ;

int sqlite3_check_freelist(sqlite3 *db, const char *zDb){
  return checkFreelist(db, zDb, 0);
}
