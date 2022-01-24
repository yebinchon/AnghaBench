#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t nNode; size_t nPopulate; scalar_t__ pBlob; int /*<<< orphan*/ * aNode; } ;
typedef  TYPE_1__ Fts3SegReader ;

/* Variables and functions */
 int /*<<< orphan*/  FTS3_NODE_CHUNKSIZE ; 
 int /*<<< orphan*/  FTS3_NODE_PADDING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *,int,size_t) ; 

__attribute__((used)) static int FUNC4(Fts3SegReader *pReader){
  int nRead;                      /* Number of bytes to read */
  int rc;                         /* Return code */

  nRead = FUNC0(pReader->nNode - pReader->nPopulate, FTS3_NODE_CHUNKSIZE);
  rc = FUNC3(
      pReader->pBlob, 
      &pReader->aNode[pReader->nPopulate],
      nRead,
      pReader->nPopulate
  );

  if( rc==SQLITE_OK ){
    pReader->nPopulate += nRead;
    FUNC1(&pReader->aNode[pReader->nPopulate], 0, FTS3_NODE_PADDING);
    if( pReader->nPopulate==pReader->nNode ){
      FUNC2(pReader->pBlob);
      pReader->pBlob = 0;
      pReader->nPopulate = 0;
    }
  }
  return rc;
}