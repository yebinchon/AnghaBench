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
struct TYPE_3__ {int dwMajorVersion; } ;
typedef  TYPE_1__ RTL_OSVERSIONINFOW ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 TYPE_1__* FUNC0 () ; 

__attribute__((used)) static BOOL FUNC1(void)
{
    RTL_OSVERSIONINFOW *info = FUNC0();
    if (!info)
        return FALSE;

    return info->dwMajorVersion >= 10;
}