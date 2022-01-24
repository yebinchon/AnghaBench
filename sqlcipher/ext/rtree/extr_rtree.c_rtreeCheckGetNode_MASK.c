#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_6__ {scalar_t__ rc; scalar_t__ pGetNode; int /*<<< orphan*/  zTab; int /*<<< orphan*/  zDb; } ;
typedef  TYPE_1__ RtreeCheck ;

/* Variables and functions */
 scalar_t__ SQLITE_NOMEM ; 
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static u8 *FUNC9(RtreeCheck *pCheck, i64 iNode, int *pnNode){
  u8 *pRet = 0;                   /* Return value */

  if( pCheck->rc==SQLITE_OK && pCheck->pGetNode==0 ){
    pCheck->pGetNode = FUNC2(pCheck,
        "SELECT data FROM %Q.'%q_node' WHERE nodeno=?", 
        pCheck->zDb, pCheck->zTab
    );
  }

  if( pCheck->rc==SQLITE_OK ){
    FUNC4(pCheck->pGetNode, 1, iNode);
    if( FUNC8(pCheck->pGetNode)==SQLITE_ROW ){
      int nNode = FUNC6(pCheck->pGetNode, 0);
      const u8 *pNode = (const u8*)FUNC5(pCheck->pGetNode, 0);
      pRet = FUNC7(nNode);
      if( pRet==0 ){
        pCheck->rc = SQLITE_NOMEM;
      }else{
        FUNC0(pRet, pNode, nNode);
        *pnNode = nNode;
      }
    }
    FUNC3(pCheck, pCheck->pGetNode);
    if( pCheck->rc==SQLITE_OK && pRet==0 ){
      FUNC1(pCheck, "Node %lld missing from database", iNode);
    }
  }

  return pRet;
}