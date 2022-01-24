#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  rc; } ;
typedef  TYPE_1__ sqlite3rbu ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_MISUSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static sqlite3rbu *FUNC2(void){
  sqlite3rbu *pRet;
  pRet = FUNC1(sizeof(sqlite3rbu));
  if( pRet ){
    FUNC0(pRet, 0, sizeof(sqlite3rbu));
    pRet->rc = SQLITE_MISUSE;
  }
  return pRet;
}