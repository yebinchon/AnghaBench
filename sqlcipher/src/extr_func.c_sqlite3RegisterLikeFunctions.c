
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compareInfo {int dummy; } ;
typedef int sqlite3 ;


 int SQLITE_FUNC_CASE ;
 int SQLITE_FUNC_LIKE ;
 int SQLITE_UTF8 ;
 int globInfo ;
 int likeFunc ;
 int likeInfoAlt ;
 int likeInfoNorm ;
 int setLikeOptFlag (int *,char*,int) ;
 int sqlite3CreateFunc (int *,char*,int,int ,struct compareInfo*,int ,int ,int ,int ,int ,int ) ;

void sqlite3RegisterLikeFunctions(sqlite3 *db, int caseSensitive){
  struct compareInfo *pInfo;
  if( caseSensitive ){
    pInfo = (struct compareInfo*)&likeInfoAlt;
  }else{
    pInfo = (struct compareInfo*)&likeInfoNorm;
  }
  sqlite3CreateFunc(db, "like", 2, SQLITE_UTF8, pInfo, likeFunc, 0, 0, 0, 0, 0);
  sqlite3CreateFunc(db, "like", 3, SQLITE_UTF8, pInfo, likeFunc, 0, 0, 0, 0, 0);
  sqlite3CreateFunc(db, "glob", 2, SQLITE_UTF8,
      (struct compareInfo*)&globInfo, likeFunc, 0, 0, 0, 0, 0);
  setLikeOptFlag(db, "glob", SQLITE_FUNC_LIKE | SQLITE_FUNC_CASE);
  setLikeOptFlag(db, "like",
      caseSensitive ? (SQLITE_FUNC_LIKE | SQLITE_FUNC_CASE) : SQLITE_FUNC_LIKE);
}
