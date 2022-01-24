#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i64 ;
struct TYPE_7__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; } ;
struct TYPE_6__ {scalar_t__ pIdxDeleter; scalar_t__ rc; TYPE_2__* pConfig; } ;
typedef  TYPE_1__ Fts5Index ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(Fts5Index *p, int iSegid){
  i64 iFirst = FUNC0(iSegid, 0);
  i64 iLast = FUNC0(iSegid+1, 0)-1;
  FUNC1(p, iFirst, iLast);
  if( p->pIdxDeleter==0 ){
    Fts5Config *pConfig = p->pConfig;
    FUNC2(p, &p->pIdxDeleter, FUNC4(
          "DELETE FROM '%q'.'%q_idx' WHERE segid=?",
          pConfig->zDb, pConfig->zName
    ));
  }
  if( p->rc==SQLITE_OK ){
    FUNC3(p->pIdxDeleter, 1, iSegid);
    FUNC6(p->pIdxDeleter);
    p->rc = FUNC5(p->pIdxDeleter);
  }
}