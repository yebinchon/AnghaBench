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
struct TYPE_5__ {scalar_t__ refs; struct TYPE_5__* next; } ;
typedef  TYPE_1__ vdp_instance_t ;

/* Variables and functions */
 scalar_t__ UINTPTR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* list ; 
 int FUNC1 (char const*,int,TYPE_1__*) ; 

__attribute__((used)) static vdp_instance_t *FUNC2(const char *name, int num)
{
    vdp_instance_t *vi = NULL;

    for (vi = list; vi != NULL; vi = vi->next)
    {
        int val = FUNC1(name, num, vi);
        if (val == 0)
        {
            FUNC0(vi->refs < UINTPTR_MAX);
            vi->refs++;
            break;
        }
    }
    return vi;
}