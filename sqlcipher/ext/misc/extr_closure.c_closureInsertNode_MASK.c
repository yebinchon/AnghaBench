#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  closure_queue ;
struct TYPE_8__ {int /*<<< orphan*/  pClosure; } ;
typedef  TYPE_1__ closure_cursor ;
struct TYPE_9__ {int iGeneration; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ closure_avl ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(
  closure_queue *pQueue,  /* Add new node to this queue */
  closure_cursor *pCur,   /* The cursor into which to add the node */
  sqlite3_int64 id,       /* The node ID */
  int iGeneration         /* The generation number for this node */
){
  closure_avl *pNew = FUNC3( sizeof(*pNew) );
  if( pNew==0 ) return SQLITE_NOMEM;
  FUNC1(pNew, 0, sizeof(*pNew));
  pNew->id = id;
  pNew->iGeneration = iGeneration;
  FUNC0(&pCur->pClosure, pNew);
  FUNC2(pQueue, pNew);
  return SQLITE_OK;
}