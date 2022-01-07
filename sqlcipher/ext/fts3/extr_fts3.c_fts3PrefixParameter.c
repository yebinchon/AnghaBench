
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Fts3Index {int nPrefix; } ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ fts3GobbleInt (char const**,int*) ;
 int memset (struct Fts3Index*,int ,int) ;
 struct Fts3Index* sqlite3_malloc64 (int) ;

__attribute__((used)) static int fts3PrefixParameter(
  const char *zParam,
  int *pnIndex,
  struct Fts3Index **apIndex
){
  struct Fts3Index *aIndex;
  int nIndex = 1;

  if( zParam && zParam[0] ){
    const char *p;
    nIndex++;
    for(p=zParam; *p; p++){
      if( *p==',' ) nIndex++;
    }
  }

  aIndex = sqlite3_malloc64(sizeof(struct Fts3Index) * nIndex);
  *apIndex = aIndex;
  if( !aIndex ){
    return SQLITE_NOMEM;
  }

  memset(aIndex, 0, sizeof(struct Fts3Index) * nIndex);
  if( zParam ){
    const char *p = zParam;
    int i;
    for(i=1; i<nIndex; i++){
      int nPrefix = 0;
      if( fts3GobbleInt(&p, &nPrefix) ) return SQLITE_ERROR;
      assert( nPrefix>=0 );
      if( nPrefix==0 ){
        nIndex--;
        i--;
      }else{
        aIndex[i].nPrefix = nPrefix;
      }
      p++;
    }
  }

  *pnIndex = nIndex;
  return SQLITE_OK;
}
