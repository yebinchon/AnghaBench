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
struct TYPE_6__ {scalar_t__ dbSize; int sectorSize; int pageSize; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  MEMDB ; 
 int SQLITE_IOCAP_ATOMIC ; 
 int SQLITE_IOCAP_ATOMIC512 ; 
 int SQLITE_IOCAP_ATOMIC64K ; 
 int SQLITE_IOCAP_BATCH_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Pager *pPager){
  FUNC3( !MEMDB );

#if defined(SQLITE_ENABLE_ATOMIC_WRITE) \
 || defined(SQLITE_ENABLE_BATCH_ATOMIC_WRITE)
  int dc;                           /* Device characteristics */

  assert( isOpen(pPager->fd) );
  dc = sqlite3OsDeviceCharacteristics(pPager->fd);
#else
  FUNC2(pPager);
#endif

#ifdef SQLITE_ENABLE_BATCH_ATOMIC_WRITE
  if( pPager->dbSize>0 && (dc&SQLITE_IOCAP_BATCH_ATOMIC) ){
    return -1;
  }
#endif

#ifdef SQLITE_ENABLE_ATOMIC_WRITE
  {
    int nSector = pPager->sectorSize;
    int szPage = pPager->pageSize;

    assert(SQLITE_IOCAP_ATOMIC512==(512>>8));
    assert(SQLITE_IOCAP_ATOMIC64K==(65536>>8));
    if( 0==(dc&(SQLITE_IOCAP_ATOMIC|(szPage>>8)) || nSector>szPage) ){
      return 0;
    }
  }

  return JOURNAL_HDR_SZ(pPager) + JOURNAL_PG_SZ(pPager);
#endif

  return 0;
}