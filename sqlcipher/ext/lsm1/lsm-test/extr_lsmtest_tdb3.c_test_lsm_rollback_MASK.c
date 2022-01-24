#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_2__ {int /*<<< orphan*/  db; scalar_t__ pCsr; } ;
typedef  TYPE_1__ LsmDb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(TestDb *pTestDb, int iLevel){
  LsmDb *pDb = (LsmDb *)pTestDb;

  /* If iLevel==0, close any open read transaction */
  if( iLevel==0 && pDb->pCsr ){
    FUNC1(pDb->pCsr);
    pDb->pCsr = 0;
  }

  return FUNC2(pDb->db, FUNC0(0, iLevel-1));
}