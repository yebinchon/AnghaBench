#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned long long* zc_word; } ;
typedef  TYPE_1__ zio_cksum_t ;
struct TYPE_7__ {int /*<<< orphan*/  zl_os; } ;
typedef  TYPE_2__ zilog_t ;
struct TYPE_8__ {TYPE_1__ blk_cksum; } ;
typedef  TYPE_3__ blkptr_t ;

/* Variables and functions */
 size_t ZIL_ZC_GUID_0 ; 
 size_t ZIL_ZC_GUID_1 ; 
 size_t ZIL_ZC_OBJSET ; 
 size_t ZIL_ZC_SEQ ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (unsigned long long) ; 

__attribute__((used)) static void
FUNC2(zilog_t *zilog, blkptr_t *bp)
{
	zio_cksum_t *zc = &bp->blk_cksum;

	zc->zc_word[ZIL_ZC_GUID_0] = FUNC1(-1ULL);
	zc->zc_word[ZIL_ZC_GUID_1] = FUNC1(-1ULL);
	zc->zc_word[ZIL_ZC_OBJSET] = FUNC0(zilog->zl_os);
	zc->zc_word[ZIL_ZC_SEQ] = 1ULL;
}