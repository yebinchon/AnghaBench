#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ handle; int /*<<< orphan*/  crit; } ;
typedef  TYPE_1__ ioinfo ;

/* Variables and functions */
 int /*<<< orphan*/  ENFILE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MSVCRT_MAX_FILES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ __badioinfo ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static inline ioinfo* FUNC7(int *fd)
{
    int i;

    *fd = -1;
    for(i=0; i<MSVCRT_MAX_FILES; i++)
    {
        ioinfo *info = FUNC5(i);

        if(info == &__badioinfo)
        {
            if(!FUNC4(i))
                return &__badioinfo;
            info = FUNC5(i);
        }

        FUNC6(info);
        if(FUNC1(&info->crit))
        {
            if(info->handle == INVALID_HANDLE_VALUE)
            {
                *fd = i;
                return info;
            }
            FUNC0(&info->crit);
        }
    }

    FUNC2(":files exhausted!\n");
    *FUNC3() = ENFILE;
    return &__badioinfo;
}