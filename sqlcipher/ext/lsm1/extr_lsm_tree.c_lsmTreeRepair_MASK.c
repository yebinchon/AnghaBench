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
struct TYPE_6__ {int /*<<< orphan*/  treehdr; TYPE_2__* pShmhdr; } ;
typedef  TYPE_1__ lsm_db ;
typedef  int /*<<< orphan*/  TreeHeader ;
struct TYPE_7__ {int /*<<< orphan*/  hdr2; int /*<<< orphan*/  hdr1; } ;
typedef  TYPE_2__ ShmHeader ;

/* Variables and functions */
 int LSM_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

int FUNC5(lsm_db *db){
  int rc = LSM_OK;
  TreeHeader hdr;
  ShmHeader *pHdr = db->pShmhdr;

  /* Ensure that the two tree-headers are consistent. Copy one over the other
  ** if necessary. Prefer the data from a tree-header for which the checksum
  ** computes. Or, if they both compute, prefer tree-header-1.  */
  if( FUNC0(&pHdr->hdr1, &pHdr->hdr2, sizeof(TreeHeader)) ){
    if( FUNC2(&pHdr->hdr1) ){
      FUNC1(&pHdr->hdr2, &pHdr->hdr1, sizeof(TreeHeader));
    }else{
      FUNC1(&pHdr->hdr1, &pHdr->hdr2, sizeof(TreeHeader));
    }
  }

  /* Save the connections current copy of the tree-header. It will be 
  ** restored before returning.  */
  FUNC1(&hdr, &db->treehdr, sizeof(TreeHeader));

  /* Walk the tree. Zero any v2 pointers with a transaction-id greater than
  ** the transaction-id currently in the tree-headers.  */
  rc = FUNC4(db);

  /* Repair the linked list of shared-memory chunks. */
  if( rc==LSM_OK ){
    rc = FUNC3(db);
  }

  FUNC1(&db->treehdr, &hdr, sizeof(TreeHeader));
  return rc;
}