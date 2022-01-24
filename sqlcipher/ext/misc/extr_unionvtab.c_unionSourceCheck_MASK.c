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
struct TYPE_4__ {int nSrc; int /*<<< orphan*/ * aSrc; } ;
typedef  TYPE_1__ UnionTab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (int*,TYPE_1__*,int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static int FUNC5(UnionTab *pTab, char **pzErr){
  int rc = SQLITE_OK;
  char *z0 = 0;
  int i;

  FUNC0( *pzErr==0 );
  z0 = FUNC4(&rc, pTab, &pTab->aSrc[0], pzErr);
  for(i=1; i<pTab->nSrc; i++){
    char *z = FUNC4(&rc, pTab, &pTab->aSrc[i], pzErr);
    if( rc==SQLITE_OK && FUNC3(z, z0) ){
      *pzErr = FUNC2("source table schema mismatch");
      rc = SQLITE_ERROR;
    }
    FUNC1(z);
  }
  FUNC1(z0);

  return rc;
}