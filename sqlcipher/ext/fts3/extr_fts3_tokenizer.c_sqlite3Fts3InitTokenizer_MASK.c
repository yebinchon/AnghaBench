#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* xCreate ) (int,char const**,TYPE_2__**) ;} ;
typedef  TYPE_1__ sqlite3_tokenizer_module ;
struct TYPE_6__ {TYPE_1__* pModule; } ;
typedef  TYPE_2__ sqlite3_tokenizer ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  Fts3Hash ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (void*,int) ; 
 size_t FUNC8 (char*) ; 
 int FUNC9 (int,char const**,TYPE_2__**) ; 

int FUNC10(
  Fts3Hash *pHash,                /* Tokenizer hash table */
  const char *zArg,               /* Tokenizer name */
  sqlite3_tokenizer **ppTok,      /* OUT: Tokenizer (if applicable) */
  char **pzErr                    /* OUT: Set to malloced error message */
){
  int rc;
  char *z = (char *)zArg;
  int n = 0;
  char *zCopy;
  char *zEnd;                     /* Pointer to nul-term of zCopy */
  sqlite3_tokenizer_module *m;

  zCopy = FUNC6("%s", zArg);
  if( !zCopy ) return SQLITE_NOMEM;
  zEnd = &zCopy[FUNC8(zCopy)];

  z = (char *)FUNC4(zCopy, &n);
  if( z==0 ){
    FUNC0( n==0 );
    z = zCopy;
  }
  z[n] = '\0';
  FUNC1(z);

  m = (sqlite3_tokenizer_module *)FUNC3(pHash,z,(int)FUNC8(z)+1);
  if( !m ){
    FUNC2(pzErr, "unknown tokenizer: %s", z);
    rc = SQLITE_ERROR;
  }else{
    char const **aArg = 0;
    int iArg = 0;
    z = &z[n+1];
    while( z<zEnd && (NULL!=(z = (char *)FUNC4(z, &n))) ){
      sqlite3_int64 nNew = sizeof(char *)*(iArg+1);
      char const **aNew = (const char **)FUNC7((void *)aArg, nNew);
      if( !aNew ){
        FUNC5(zCopy);
        FUNC5((void *)aArg);
        return SQLITE_NOMEM;
      }
      aArg = aNew;
      aArg[iArg++] = z;
      z[n] = '\0';
      FUNC1(z);
      z = &z[n+1];
    }
    rc = m->xCreate(iArg, aArg, ppTok);
    FUNC0( rc!=SQLITE_OK || *ppTok );
    if( rc!=SQLITE_OK ){
      FUNC2(pzErr, "unknown tokenizer");
    }else{
      (*ppTok)->pModule = m; 
    }
    FUNC5((void *)aArg);
  }

  FUNC5(zCopy);
  return rc;
}