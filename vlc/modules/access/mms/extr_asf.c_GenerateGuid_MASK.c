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
struct TYPE_3__ {int Data1; int /*<<< orphan*/ * Data4; int /*<<< orphan*/  Data3; int /*<<< orphan*/  Data2; } ;
typedef  TYPE_1__ vlc_guid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

void  FUNC1 ( vlc_guid_t *p_guid )
{
    p_guid->Data1 = 0xbabac001;
    FUNC0(&p_guid->Data2, sizeof(p_guid->Data2));
    FUNC0(&p_guid->Data3, sizeof(p_guid->Data3));
    FUNC0(p_guid->Data4, sizeof(p_guid->Data4));
}