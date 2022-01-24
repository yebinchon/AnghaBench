#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nColumn; scalar_t__ zLanguageid; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,char**,char*,...) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(Fts3Table *p, const char *zFunc, int *pRc){
  char *zRet = 0;
  char *zFree = 0;
  char *zFunction;
  int i;

  if( !zFunc ){
    zFunction = "";
  }else{
    zFree = zFunction = FUNC1(zFunc);
  }
  FUNC0(pRc, &zRet, "?");
  for(i=0; i<p->nColumn; i++){
    FUNC0(pRc, &zRet, ",%s(?)", zFunction);
  }
  if( p->zLanguageid ){
    FUNC0(pRc, &zRet, ", ?");
  }
  FUNC2(zFree);
  return zRet;
}