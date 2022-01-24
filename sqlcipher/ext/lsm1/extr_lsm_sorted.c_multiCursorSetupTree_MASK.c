#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nTree; } ;
typedef  TYPE_1__ MultiCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC6(MultiCursor *pCsr, int bRev){
  int rc;

  rc = FUNC3(pCsr);
  if( rc==LSM_OK ){
    int i;
    for(i=pCsr->nTree-1; i>0; i--){
      FUNC5(pCsr, i, bRev);
    }
  }

  FUNC0(pCsr);
  FUNC4(pCsr, &rc);

  if( rc==LSM_OK && FUNC1(pCsr, 0)==0 ){
    rc = FUNC2(pCsr, bRev);
  }
  return rc;
}