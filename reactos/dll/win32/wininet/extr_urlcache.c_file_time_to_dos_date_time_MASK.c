#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
struct TYPE_4__ {int /*<<< orphan*/  dwHighDateTime; int /*<<< orphan*/  dwLowDateTime; } ;
typedef  TYPE_1__ FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static void FUNC1(const FILETIME *ft, WORD *fatdate,
                                           WORD *fattime)
{
    if (!ft->dwLowDateTime && !ft->dwHighDateTime)
        *fatdate = *fattime = 0;
    else
        FUNC0(ft, fatdate, fattime);
}