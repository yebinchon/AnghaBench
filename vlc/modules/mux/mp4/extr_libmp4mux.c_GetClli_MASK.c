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
struct TYPE_4__ {int /*<<< orphan*/  MaxFALL; int /*<<< orphan*/  MaxCLL; } ;
struct TYPE_5__ {TYPE_1__ lighting; } ;
typedef  TYPE_2__ video_format_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 

__attribute__((used)) static bo_t *FUNC2(const video_format_t *p_vfmt)
{
    if(!p_vfmt->lighting.MaxFALL)
        return NULL;
    bo_t *p_box = FUNC1("clli");
    if(p_box)
    {
        FUNC0(p_box, p_vfmt->lighting.MaxCLL);
        FUNC0(p_box, p_vfmt->lighting.MaxFALL);
    }
    return p_box;
}