
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;
typedef scalar_t__ i64 ;


 scalar_t__ DOCID_CMP (scalar_t__,scalar_t__) ;
 scalar_t__ FTS3_BUFFER_PADDING ;
 int FTS3_VARINT_MAX ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3GetDeltaVarint3 (char**,char*,int,scalar_t__*) ;
 int fts3PoslistCopy (char**,char**) ;
 int fts3PoslistMerge (char**,char**,char**) ;
 int fts3PutDeltaVarint3 (char**,int,scalar_t__*,int*,scalar_t__) ;
 int memset (char*,int ,scalar_t__) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (scalar_t__) ;

__attribute__((used)) static int fts3DoclistOrMerge(
  int bDescDoclist,
  char *a1, int n1,
  char *a2, int n2,
  char **paOut, int *pnOut
){
  int rc = SQLITE_OK;
  sqlite3_int64 i1 = 0;
  sqlite3_int64 i2 = 0;
  sqlite3_int64 iPrev = 0;
  char *pEnd1 = &a1[n1];
  char *pEnd2 = &a2[n2];
  char *p1 = a1;
  char *p2 = a2;
  char *p;
  char *aOut;
  int bFirstOut = 0;

  *paOut = 0;
  *pnOut = 0;
  aOut = sqlite3_malloc64((i64)n1+n2+FTS3_VARINT_MAX-1+FTS3_BUFFER_PADDING);
  if( !aOut ) return SQLITE_NOMEM;

  p = aOut;
  fts3GetDeltaVarint3(&p1, pEnd1, 0, &i1);
  fts3GetDeltaVarint3(&p2, pEnd2, 0, &i2);
  while( p1 || p2 ){
    sqlite3_int64 iDiff = DOCID_CMP(i1, i2);

    if( p2 && p1 && iDiff==0 ){
      fts3PutDeltaVarint3(&p, bDescDoclist, &iPrev, &bFirstOut, i1);
      rc = fts3PoslistMerge(&p, &p1, &p2);
      if( rc ) break;
      fts3GetDeltaVarint3(&p1, pEnd1, bDescDoclist, &i1);
      fts3GetDeltaVarint3(&p2, pEnd2, bDescDoclist, &i2);
    }else if( !p2 || (p1 && iDiff<0) ){
      fts3PutDeltaVarint3(&p, bDescDoclist, &iPrev, &bFirstOut, i1);
      fts3PoslistCopy(&p, &p1);
      fts3GetDeltaVarint3(&p1, pEnd1, bDescDoclist, &i1);
    }else{
      fts3PutDeltaVarint3(&p, bDescDoclist, &iPrev, &bFirstOut, i2);
      fts3PoslistCopy(&p, &p2);
      fts3GetDeltaVarint3(&p2, pEnd2, bDescDoclist, &i2);
    }
  }

  if( rc!=SQLITE_OK ){
    sqlite3_free(aOut);
    p = aOut = 0;
  }else{
    assert( (p-aOut)<=n1+n2+FTS3_VARINT_MAX-1 );
    memset(&aOut[(p-aOut)], 0, FTS3_BUFFER_PADDING);
  }
  *paOut = aOut;
  *pnOut = (int)(p-aOut);
  return rc;
}
