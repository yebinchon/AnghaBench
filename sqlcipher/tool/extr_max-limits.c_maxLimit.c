
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int sqlite3_limit (int *,int,int) ;

__attribute__((used)) static int maxLimit(sqlite3 *db, int eCode){
  int iOrig = sqlite3_limit(db, eCode, 0x7fffffff);
  return sqlite3_limit(db, eCode, iOrig);
}
