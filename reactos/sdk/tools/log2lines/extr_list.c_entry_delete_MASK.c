#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* buf; } ;
typedef  TYPE_1__* PLIST_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

PLIST_MEMBER
FUNC1(PLIST_MEMBER pentry)
{
    if (!pentry)
        return NULL;
    if (pentry->buf)
        FUNC0(pentry->buf);
    FUNC0(pentry);
    return NULL;
}