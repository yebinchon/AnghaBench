#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_db ;
struct TYPE_12__ {int flags; } ;
typedef  TYPE_1__ TreeKey ;
struct TYPE_14__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {int /*<<< orphan*/  pDb; TYPE_3__ blob; } ;
typedef  TYPE_2__ TreeCursor ;
typedef  TYPE_3__ TreeBlob ;

/* Variables and functions */
 int LSM_END_DELETE ; 
 int LSM_OK ; 
 int LSM_START_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,TYPE_3__*,int*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(lsm_db *db){
  int prev = 0;
  TreeBlob blob = {0, 0};
  TreeCursor csr;               /* Cursor used to iterate through tree */
  int rc;

  FUNC6(db, 0, &csr);
  for( rc = FUNC2(&csr, 0);
       rc==LSM_OK && FUNC4(&csr);
       rc = FUNC3(&csr)
  ){
    TreeKey *pKey = FUNC1(&csr, &blob, &rc);
    if( rc!=LSM_OK ) break;
    FUNC0( ((prev&LSM_START_DELETE)==0)==((pKey->flags&LSM_END_DELETE)==0) );
    prev = pKey->flags;
  }

  FUNC5(csr.pDb, &csr.blob);
  FUNC5(csr.pDb, &blob);

  return 1;
}