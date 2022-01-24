#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(
  const char *zIn,                /* Input string */
  char **pzRank,                  /* OUT: Rank function name */
  char **pzRankArgs               /* OUT: Rank function arguments */
){
  const char *p = zIn;
  const char *pRank;
  char *zRank = 0;
  char *zRankArgs = 0;
  int rc = SQLITE_OK;

  *pzRank = 0;
  *pzRankArgs = 0;

  if( p==0 ){
    rc = SQLITE_ERROR;
  }else{
    p = FUNC3(p);
    pRank = p;
    p = FUNC2(p);

    if( p ){
      zRank = FUNC5(&rc, 1 + p - pRank);
      if( zRank ) FUNC4(zRank, pRank, p-pRank);
    }else{
      rc = SQLITE_ERROR;
    }

    if( rc==SQLITE_OK ){
      p = FUNC3(p);
      if( *p!='(' ) rc = SQLITE_ERROR;
      p++;
    }
    if( rc==SQLITE_OK ){
      const char *pArgs; 
      p = FUNC3(p);
      pArgs = p;
      if( *p!=')' ){
        p = FUNC1(p);
        if( p==0 ){
          rc = SQLITE_ERROR;
        }else{
          zRankArgs = FUNC5(&rc, 1 + p - pArgs);
          if( zRankArgs ) FUNC4(zRankArgs, pArgs, p-pArgs);
        }
      }
    }
  }

  if( rc!=SQLITE_OK ){
    FUNC6(zRank);
    FUNC0( zRankArgs==0 );
  }else{
    *pzRank = zRank;
    *pzRankArgs = zRankArgs;
  }
  return rc;
}