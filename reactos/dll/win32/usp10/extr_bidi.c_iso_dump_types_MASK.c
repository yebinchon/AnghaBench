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
struct TYPE_5__ {int length; TYPE_1__* item; } ;
struct TYPE_4__ {size_t* pcls; } ;
typedef  TYPE_2__ IsolatedRun ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * debug_type ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(const char* header, IsolatedRun *iso_run)
{
    int i, len = 0;
    FUNC0("%s:",header);
    FUNC0("[ ");
    for (i = 0; i < iso_run->length && len < 200; i++)
    {
        FUNC0(" %s",debug_type[*iso_run->item[i].pcls]);
        len += FUNC1(debug_type[*iso_run->item[i].pcls])+1;
    }
    if (i != iso_run->length)
        FUNC0("...");
    FUNC0(" ]\n");
}