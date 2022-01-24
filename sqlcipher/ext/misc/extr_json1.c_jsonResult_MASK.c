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
struct TYPE_4__ {scalar_t__ bErr; scalar_t__ bStatic; int /*<<< orphan*/  nUsed; int /*<<< orphan*/  zBuf; int /*<<< orphan*/  pCtx; } ;
typedef  TYPE_1__ JsonString ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(JsonString *p){
  if( p->bErr==0 ){
    FUNC2(p->pCtx, p->zBuf, p->nUsed, 
                          p->bStatic ? SQLITE_TRANSIENT : sqlite3_free,
                          SQLITE_UTF8);
    FUNC1(p);
  }
  FUNC0( p->bStatic );
}