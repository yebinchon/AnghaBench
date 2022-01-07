
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bFts4; int bHasStat; } ;
typedef TYPE_1__ Fts3Table ;


 int FTS3_MERGE_COUNT ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3Getint (char const**) ;
 int sqlite3Fts3CreateStatTable (int*,TYPE_1__*) ;
 int sqlite3Fts3Incrmerge (TYPE_1__*,int,int) ;
 int sqlite3Fts3SegmentsClose (TYPE_1__*) ;

__attribute__((used)) static int fts3DoIncrmerge(
  Fts3Table *p,
  const char *zParam
){
  int rc;
  int nMin = (FTS3_MERGE_COUNT / 2);
  int nMerge = 0;
  const char *z = zParam;


  nMerge = fts3Getint(&z);



  if( z[0]==',' && z[1]!='\0' ){
    z++;
    nMin = fts3Getint(&z);
  }

  if( z[0]!='\0' || nMin<2 ){
    rc = SQLITE_ERROR;
  }else{
    rc = SQLITE_OK;
    if( !p->bHasStat ){
      assert( p->bFts4==0 );
      sqlite3Fts3CreateStatTable(&rc, p);
    }
    if( rc==SQLITE_OK ){
      rc = sqlite3Fts3Incrmerge(p, nMerge, nMin);
    }
    sqlite3Fts3SegmentsClose(p);
  }
  return rc;
}
