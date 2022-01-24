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
struct TYPE_9__ {TYPE_2__* aDb; } ;
typedef  TYPE_3__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_10__ {int /*<<< orphan*/ * pVdbe; TYPE_3__* db; } ;
struct TYPE_8__ {TYPE_1__* pSchema; } ;
struct TYPE_7__ {scalar_t__ schema_cookie; } ;
typedef  TYPE_4__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  BTREE_SCHEMA_VERSION ; 
 int /*<<< orphan*/  OP_SetCookie ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

void FUNC3(Parse *pParse, int iDb){
  sqlite3 *db = pParse->db;
  Vdbe *v = pParse->pVdbe;
  FUNC0( FUNC1(db, iDb, 0) );
  FUNC2(v, OP_SetCookie, iDb, BTREE_SCHEMA_VERSION, 
                   (int)(1+(unsigned)db->aDb[iDb].pSchema->schema_cookie));
}