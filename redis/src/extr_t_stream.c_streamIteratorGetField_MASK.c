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
struct TYPE_3__ {int entry_flags; void* lp_ele; int /*<<< orphan*/  lp; int /*<<< orphan*/  value_buf; int /*<<< orphan*/  field_buf; void* master_fields_ptr; } ;
typedef  TYPE_1__ streamIterator ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int STREAM_ITEM_FLAG_SAMEFIELDS ; 
 unsigned char* FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*) ; 

void FUNC2(streamIterator *si, unsigned char **fieldptr, unsigned char **valueptr, int64_t *fieldlen, int64_t *valuelen) {
    if (si->entry_flags & STREAM_ITEM_FLAG_SAMEFIELDS) {
        *fieldptr = FUNC0(si->master_fields_ptr,fieldlen,si->field_buf);
        si->master_fields_ptr = FUNC1(si->lp,si->master_fields_ptr);
    } else {
        *fieldptr = FUNC0(si->lp_ele,fieldlen,si->field_buf);
        si->lp_ele = FUNC1(si->lp,si->lp_ele);
    }
    *valueptr = FUNC0(si->lp_ele,valuelen,si->value_buf);
    si->lp_ele = FUNC1(si->lp,si->lp_ele);
}