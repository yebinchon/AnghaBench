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
struct TYPE_5__ {int (* xCreate ) (int /*<<< orphan*/ ,char const**,int,int /*<<< orphan*/ **) ;} ;
typedef  TYPE_1__ fts5_tokenizer ;
struct TYPE_6__ {TYPE_1__ x; int /*<<< orphan*/  pUserData; } ;
typedef  TYPE_2__ Fts5TokenizerModule ;
typedef  int /*<<< orphan*/  Fts5Tokenizer ;
typedef  int /*<<< orphan*/  Fts5Global ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const**,int,int /*<<< orphan*/ **) ; 

int FUNC4(
  Fts5Global *pGlobal, 
  const char **azArg,
  int nArg,
  Fts5Tokenizer **ppTok,
  fts5_tokenizer **ppTokApi,
  char **pzErr
){
  Fts5TokenizerModule *pMod;
  int rc = SQLITE_OK;

  pMod = FUNC1(pGlobal, nArg==0 ? 0 : azArg[0]);
  if( pMod==0 ){
    FUNC0( nArg>0 );
    rc = SQLITE_ERROR;
    *pzErr = FUNC2("no such tokenizer: %s", azArg[0]);
  }else{
    rc = pMod->x.xCreate(pMod->pUserData, &azArg[1], (nArg?nArg-1:0), ppTok);
    *ppTokApi = &pMod->x;
    if( rc!=SQLITE_OK && pzErr ){
      *pzErr = FUNC2("error in tokenizer constructor");
    }
  }

  if( rc!=SQLITE_OK ){
    *ppTokApi = 0;
    *ppTok = 0;
  }

  return rc;
}