#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_11__ {TYPE_1__* access; int /*<<< orphan*/  first; int /*<<< orphan*/  next; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  STREAM_CAN_SEEK ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(stream_t *access, uint64_t position)
{
    access_sys_t *sys = access->p_sys;

    if (sys->access != NULL)
    {
        FUNC2(sys->access);
        sys->access = NULL;
    }

    sys->next = sys->first;

    for (uint64_t offset = 0;;)
    {
        stream_t *a = FUNC0(access);
        if (a == NULL)
            break;

        bool can_seek;
        FUNC1(a, STREAM_CAN_SEEK, &can_seek);
        if (!can_seek)
            break;

        uint64_t size;

        if (FUNC3(a, &size))
            break;
        if (position - offset < size)
        {
            if (FUNC4(a, position - offset))
                break;
            return VLC_SUCCESS;
        }

        offset += size;
        FUNC2(a);
        sys->access = NULL;
    }

    return VLC_EGENERIC;
}