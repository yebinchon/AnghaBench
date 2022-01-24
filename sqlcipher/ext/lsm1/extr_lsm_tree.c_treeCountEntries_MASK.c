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
typedef  int /*<<< orphan*/  lsm_db ;
struct TYPE_6__ {int /*<<< orphan*/  blob; int /*<<< orphan*/  pDb; } ;
typedef  TYPE_1__ TreeCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(lsm_db *db){
  TreeCursor csr;               /* Cursor used to iterate through tree */
  int rc;
  int nEntry = 0;

  FUNC4(db, 0, &csr);
  for( rc = FUNC0(&csr, 0);
       rc==LSM_OK && FUNC2(&csr);
       rc = FUNC1(&csr)
  ){
    nEntry++;
  }

  FUNC3(csr.pDb, &csr.blob);

  return nEntry;
}