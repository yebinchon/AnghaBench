#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int start_count; int /*<<< orphan*/  end_count; } ;
typedef  TYPE_1__ cmap_format_4_seg ;
struct TYPE_6__ {int /*<<< orphan*/  seg_countx2; } ;
typedef  TYPE_2__ cmap_format_4 ;
typedef  int USHORT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC3(void *ptr, DWORD *first, DWORD *last, DWORD limit)
{
    int i;
    cmap_format_4 *cmap = (cmap_format_4*)ptr;
    USHORT seg_count = FUNC0(cmap->seg_countx2) / 2;

    *first = 0x10000;

    for(i = 0; i < seg_count; i++)
    {
        cmap_format_4_seg seg;

        FUNC1(cmap, i, &seg);

        if(seg.start_count > 0xfffe) break;

        if(*first == 0x10000) *first = seg.start_count;

        *last = FUNC2(seg.end_count, 0xfffe);
    }

    if(*first == 0x10000) return FALSE;
    return TRUE;
}