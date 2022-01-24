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
typedef  scalar_t__ u32 ;
struct TYPE_6__ {char* z; int flags; int n; } ;
typedef  TYPE_1__ Mem ;
typedef  int /*<<< orphan*/  BtCursor ;

/* Variables and functions */
 int MEM_Blob ; 
 int MEM_Ephem ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,TYPE_1__*) ; 

int FUNC6(
  BtCursor *pCur,   /* Cursor pointing at record to retrieve. */
  u32 offset,       /* Offset from the start of data to return bytes from. */
  u32 amt,          /* Number of bytes to return. */
  Mem *pMem         /* OUT: Return data in this Mem structure. */
){
  char *zData;        /* Data from the btree layer */
  u32 available = 0;  /* Number of bytes available on the local btree page */
  int rc = SQLITE_OK; /* Return code */

  FUNC1( FUNC2(pCur) );
  FUNC1( !FUNC0(pMem) );

  /* Note: the calls to BtreeKeyFetch() and DataFetch() below assert() 
  ** that both the BtShared and database handle mutexes are held. */
  FUNC1( !FUNC4(pMem) );
  zData = (char *)FUNC3(pCur, &available);
  FUNC1( zData!=0 );

  if( offset+amt<=available ){
    pMem->z = &zData[offset];
    pMem->flags = MEM_Blob|MEM_Ephem;
    pMem->n = (int)amt;
  }else{
    rc = FUNC5(pCur, offset, amt, pMem);
  }

  return rc;
}