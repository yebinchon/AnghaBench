#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_4__ {int /*<<< orphan*/  nErr; } ;
typedef  TYPE_1__ JsonParse ;
typedef  int /*<<< orphan*/  JsonNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int*,char const**) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static JsonNode *FUNC6(
  JsonParse *pParse,      /* The JSON to search */
  const char *zPath,      /* The path to search */
  int *pApnd,             /* Append nodes to complete path if not NULL */
  sqlite3_context *pCtx   /* Report errors here, if not NULL */
){
  const char *zErr = 0;
  JsonNode *pNode = 0;
  char *zMsg;

  if( zPath==0 ) return 0;
  if( zPath[0]!='$' ){
    zErr = zPath;
    goto lookup_err;
  }
  zPath++;
  pNode = FUNC1(pParse, 0, zPath, pApnd, &zErr);
  if( zErr==0 ) return pNode;

lookup_err:
  pParse->nErr++;
  FUNC0( zErr!=0 && pCtx!=0 );
  zMsg = FUNC2(zErr);
  if( zMsg ){
    FUNC4(pCtx, zMsg, -1);
    FUNC3(zMsg);
  }else{
    FUNC5(pCtx);
  }
  return 0;
}