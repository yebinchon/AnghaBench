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
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_3__ {int /*<<< orphan*/  n; scalar_t__ z; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

char *FUNC2(sqlite3 *db, Token *pName){
  char *zName;
  if( pName ){
    zName = FUNC0(db, (char*)pName->z, pName->n);
    FUNC1(zName);
  }else{
    zName = 0;
  }
  return zName;
}