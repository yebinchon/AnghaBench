
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 scalar_t__ DOCID_CMP (scalar_t__,scalar_t__) ;
 scalar_t__ FTS3_VARINT_MAX ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3GetDeltaVarint3 (char**,char*,int,scalar_t__*) ;
 int fts3PoslistCopy (int ,char**) ;
 scalar_t__ fts3PoslistPhraseMerge (char**,int,int ,int,char**,char**) ;
 int fts3PutDeltaVarint3 (char**,int,scalar_t__*,int*,scalar_t__) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (scalar_t__) ;

__attribute__((used)) static int fts3DoclistPhraseMerge(
  int bDescDoclist,
  int nDist,
  char *aLeft, int nLeft,
  char **paRight, int *pnRight
){
  sqlite3_int64 i1 = 0;
  sqlite3_int64 i2 = 0;
  sqlite3_int64 iPrev = 0;
  char *aRight = *paRight;
  char *pEnd1 = &aLeft[nLeft];
  char *pEnd2 = &aRight[*pnRight];
  char *p1 = aLeft;
  char *p2 = aRight;
  char *p;
  int bFirstOut = 0;
  char *aOut;

  assert( nDist>0 );
  if( bDescDoclist ){
    aOut = sqlite3_malloc64((sqlite3_int64)*pnRight + FTS3_VARINT_MAX);
    if( aOut==0 ) return SQLITE_NOMEM;
  }else{
    aOut = aRight;
  }
  p = aOut;

  fts3GetDeltaVarint3(&p1, pEnd1, 0, &i1);
  fts3GetDeltaVarint3(&p2, pEnd2, 0, &i2);

  while( p1 && p2 ){
    sqlite3_int64 iDiff = DOCID_CMP(i1, i2);
    if( iDiff==0 ){
      char *pSave = p;
      sqlite3_int64 iPrevSave = iPrev;
      int bFirstOutSave = bFirstOut;

      fts3PutDeltaVarint3(&p, bDescDoclist, &iPrev, &bFirstOut, i1);
      if( 0==fts3PoslistPhraseMerge(&p, nDist, 0, 1, &p1, &p2) ){
        p = pSave;
        iPrev = iPrevSave;
        bFirstOut = bFirstOutSave;
      }
      fts3GetDeltaVarint3(&p1, pEnd1, bDescDoclist, &i1);
      fts3GetDeltaVarint3(&p2, pEnd2, bDescDoclist, &i2);
    }else if( iDiff<0 ){
      fts3PoslistCopy(0, &p1);
      fts3GetDeltaVarint3(&p1, pEnd1, bDescDoclist, &i1);
    }else{
      fts3PoslistCopy(0, &p2);
      fts3GetDeltaVarint3(&p2, pEnd2, bDescDoclist, &i2);
    }
  }

  *pnRight = (int)(p - aOut);
  if( bDescDoclist ){
    sqlite3_free(aRight);
    *paRight = aOut;
  }

  return SQLITE_OK;
}
