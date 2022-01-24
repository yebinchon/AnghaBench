#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct buffer_head {scalar_t__ b_bcb; TYPE_2__* b_mdl; } ;
struct TYPE_5__ {int /*<<< orphan*/  MappedSystemVa; int /*<<< orphan*/  MdlFlags; } ;
struct TYPE_4__ {int /*<<< orphan*/  bh_count; int /*<<< orphan*/  bh_cache; } ;
typedef  int ERESOURCE_THREAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int /*<<< orphan*/  DL_BH ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDL_MAPPED_TO_SYSTEM_VA ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  PS_BUFF_HEAD ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ g_jbh ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct buffer_head*) ; 

void
FUNC8(struct buffer_head * bh)
{
    if (bh) {
        if (bh->b_mdl) {

            FUNC1(DL_BH, ("bh=%p mdl=%p (Flags:%xh VA:%p) released.\n", bh, bh->b_mdl,
                          bh->b_mdl->MdlFlags, bh->b_mdl->MappedSystemVa));
            if (FUNC4(bh->b_mdl->MdlFlags, MDL_MAPPED_TO_SYSTEM_VA)) {
                FUNC5(bh->b_mdl->MappedSystemVa, bh->b_mdl);
            }
            FUNC3(bh->b_mdl);
        }
        if (bh->b_bcb) {
            FUNC0(bh->b_bcb, (ERESOURCE_THREAD)bh | 0x3);
        }

        FUNC1(DL_BH, ("bh=%p freed.\n", bh));
        FUNC2(PS_BUFF_HEAD, bh, sizeof(struct buffer_head));
        FUNC7(g_jbh.bh_cache, bh);
        FUNC6(&g_jbh.bh_count);
    }
}