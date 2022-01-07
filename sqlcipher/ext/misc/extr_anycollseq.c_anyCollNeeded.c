
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int anyCollFunc ;
 int sqlite3_create_collation (int *,char const*,int,int ,int ) ;

__attribute__((used)) static void anyCollNeeded(
  void *NotUsed,
  sqlite3 *db,
  int eTextRep,
  const char *zCollName
){
  sqlite3_create_collation(db, zCollName, eTextRep, 0, anyCollFunc);
}
