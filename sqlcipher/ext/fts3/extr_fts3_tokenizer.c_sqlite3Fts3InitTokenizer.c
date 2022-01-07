
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* xCreate ) (int,char const**,TYPE_2__**) ;} ;
typedef TYPE_1__ sqlite3_tokenizer_module ;
struct TYPE_6__ {TYPE_1__* pModule; } ;
typedef TYPE_2__ sqlite3_tokenizer ;
typedef int sqlite3_int64 ;
typedef int Fts3Hash ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3Fts3Dequote (char*) ;
 int sqlite3Fts3ErrMsg (char**,char*,...) ;
 scalar_t__ sqlite3Fts3HashFind (int *,char*,int) ;
 scalar_t__ sqlite3Fts3NextToken (char*,int*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 scalar_t__ sqlite3_realloc64 (void*,int) ;
 size_t strlen (char*) ;
 int stub1 (int,char const**,TYPE_2__**) ;

int sqlite3Fts3InitTokenizer(
  Fts3Hash *pHash,
  const char *zArg,
  sqlite3_tokenizer **ppTok,
  char **pzErr
){
  int rc;
  char *z = (char *)zArg;
  int n = 0;
  char *zCopy;
  char *zEnd;
  sqlite3_tokenizer_module *m;

  zCopy = sqlite3_mprintf("%s", zArg);
  if( !zCopy ) return SQLITE_NOMEM;
  zEnd = &zCopy[strlen(zCopy)];

  z = (char *)sqlite3Fts3NextToken(zCopy, &n);
  if( z==0 ){
    assert( n==0 );
    z = zCopy;
  }
  z[n] = '\0';
  sqlite3Fts3Dequote(z);

  m = (sqlite3_tokenizer_module *)sqlite3Fts3HashFind(pHash,z,(int)strlen(z)+1);
  if( !m ){
    sqlite3Fts3ErrMsg(pzErr, "unknown tokenizer: %s", z);
    rc = SQLITE_ERROR;
  }else{
    char const **aArg = 0;
    int iArg = 0;
    z = &z[n+1];
    while( z<zEnd && (((void*)0)!=(z = (char *)sqlite3Fts3NextToken(z, &n))) ){
      sqlite3_int64 nNew = sizeof(char *)*(iArg+1);
      char const **aNew = (const char **)sqlite3_realloc64((void *)aArg, nNew);
      if( !aNew ){
        sqlite3_free(zCopy);
        sqlite3_free((void *)aArg);
        return SQLITE_NOMEM;
      }
      aArg = aNew;
      aArg[iArg++] = z;
      z[n] = '\0';
      sqlite3Fts3Dequote(z);
      z = &z[n+1];
    }
    rc = m->xCreate(iArg, aArg, ppTok);
    assert( rc!=SQLITE_OK || *ppTok );
    if( rc!=SQLITE_OK ){
      sqlite3Fts3ErrMsg(pzErr, "unknown tokenizer");
    }else{
      (*ppTok)->pModule = m;
    }
    sqlite3_free((void *)aArg);
  }

  sqlite3_free(zCopy);
  return rc;
}
