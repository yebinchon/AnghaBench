#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* zExpr; } ;
struct TYPE_4__ {void* zWhere; TYPE_2__* aCol; } ;
typedef  TYPE_1__ CidxIndex ;
typedef  int /*<<< orphan*/  CidxCursor ;
typedef  TYPE_2__ CidxColumn ;

/* Variables and functions */
 int CIDX_PARSE_CLOSE ; 
 int CIDX_PARSE_COMMA ; 
 int CIDX_PARSE_EOF ; 
 int CIDX_PARSE_OPEN ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC1 (char const*,char const**,int*) ; 
 void* FUNC2 (int*,char*,...) ; 
 scalar_t__ FUNC3 (char const) ; 
 scalar_t__ FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC6(CidxCursor *pCsr, CidxIndex *pIdx, const char *zSql){
  const char *z = zSql;
  const char *z1;
  int e;
  int rc = SQLITE_OK;
  int nParen = 1;
  int bDoNotTrim = 0;
  CidxColumn *pCol = pIdx->aCol;

  e = FUNC1(z, &z, &bDoNotTrim);
  if( e!=CIDX_PARSE_OPEN ) goto parse_error;
  z1 = z+1;
  z++;
  while( nParen>0 ){
    e = FUNC1(z, &z, &bDoNotTrim);
    if( e==CIDX_PARSE_EOF ) goto parse_error;
    if( (e==CIDX_PARSE_COMMA || e==CIDX_PARSE_CLOSE) && nParen==1 ){
      const char *z2 = z;
      if( pCol->zExpr ) goto parse_error;

      if( bDoNotTrim==0 ){
        while( FUNC4(z[-1]) ) z--;
        if( !FUNC5(&z[-3], "asc", 3) && 0==FUNC3(z[-4]) ){
          z -= 3;
          while( FUNC4(z[-1]) ) z--;
        }else
          if( !FUNC5(&z[-4], "desc", 4) && 0==FUNC3(z[-5]) ){
            z -= 4;
            while( FUNC4(z[-1]) ) z--;
          }
        while( FUNC4(z1[0]) ) z1++;
      }

      pCol->zExpr = FUNC2(&rc, "%.*s", z-z1, z1);
      pCol++;
      z = z1 = z2+1;
    }
    if( e==CIDX_PARSE_OPEN ) nParen++;
    if( e==CIDX_PARSE_CLOSE ) nParen--;
    z++;
  }

  /* Search for a WHERE clause */
  FUNC1(z, &z, 0);
  if( 0==FUNC5(z, "where", 5) ){
    pIdx->zWhere = FUNC2(&rc, "%s\n", &z[5]);
  }else if( z[0]!='\0' ){
    goto parse_error;
  }

  return rc;

 parse_error:
  FUNC0(pCsr, "Parse error in: %s", zSql);
  return SQLITE_ERROR;
}