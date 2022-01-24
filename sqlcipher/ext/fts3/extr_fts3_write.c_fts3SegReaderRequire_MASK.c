#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* aNode; size_t nNode; int nPopulate; scalar_t__ pBlob; } ;
typedef  TYPE_1__ Fts3SegReader ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(Fts3SegReader *pReader, char *pFrom, int nByte){
  int rc = SQLITE_OK;
  FUNC0( !pReader->pBlob 
       || (pFrom>=pReader->aNode && pFrom<&pReader->aNode[pReader->nNode])
  );
  while( pReader->pBlob && rc==SQLITE_OK 
     &&  (pFrom - pReader->aNode + nByte)>pReader->nPopulate
  ){
    rc = FUNC1(pReader);
  }
  return rc;
}