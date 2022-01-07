
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3_value ;
struct TYPE_8__ {void* bNoIncrDoclist; void* nMaxPendingData; void* nNodeSize; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 void* atoi (char const*) ;
 int fts3DoAutoincrmerge (TYPE_1__*,char const*) ;
 int fts3DoIncrmerge (TYPE_1__*,char const*) ;
 int fts3DoIntegrityCheck (TYPE_1__*) ;
 int fts3DoOptimize (TYPE_1__*,int ) ;
 int fts3DoRebuild (TYPE_1__*) ;
 scalar_t__ sqlite3_strnicmp (char const*,char*,int) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static int fts3SpecialInsert(Fts3Table *p, sqlite3_value *pVal){
  int rc;
  const char *zVal = (const char *)sqlite3_value_text(pVal);
  int nVal = sqlite3_value_bytes(pVal);

  if( !zVal ){
    return SQLITE_NOMEM;
  }else if( nVal==8 && 0==sqlite3_strnicmp(zVal, "optimize", 8) ){
    rc = fts3DoOptimize(p, 0);
  }else if( nVal==7 && 0==sqlite3_strnicmp(zVal, "rebuild", 7) ){
    rc = fts3DoRebuild(p);
  }else if( nVal==15 && 0==sqlite3_strnicmp(zVal, "integrity-check", 15) ){
    rc = fts3DoIntegrityCheck(p);
  }else if( nVal>6 && 0==sqlite3_strnicmp(zVal, "merge=", 6) ){
    rc = fts3DoIncrmerge(p, &zVal[6]);
  }else if( nVal>10 && 0==sqlite3_strnicmp(zVal, "automerge=", 10) ){
    rc = fts3DoAutoincrmerge(p, &zVal[10]);
  }else{
    rc = SQLITE_ERROR;
  }

  return rc;
}
