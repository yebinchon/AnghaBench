#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_8__ {int /*<<< orphan*/  zErrMsg; } ;
struct TYPE_9__ {TYPE_1__* pConfig; TYPE_2__ base; } ;
struct TYPE_10__ {TYPE_3__ p; int /*<<< orphan*/  pStorage; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pzErrmsg; } ;
typedef  TYPE_4__ Fts5FullTable ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_SYNC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(sqlite3_vtab *pVtab){
  int rc;
  Fts5FullTable *pTab = (Fts5FullTable*)pVtab;
  FUNC0(pTab, FTS5_SYNC, 0);
  pTab->p.pConfig->pzErrmsg = &pTab->p.base.zErrMsg;
  FUNC1(pTab);
  rc = FUNC2(pTab->pStorage);
  pTab->p.pConfig->pzErrmsg = 0;
  return rc;
}