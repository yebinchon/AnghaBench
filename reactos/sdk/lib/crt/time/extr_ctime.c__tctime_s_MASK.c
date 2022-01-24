#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  scalar_t__ errno_t ;
typedef  int /*<<< orphan*/  _TCHAR ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t,struct tm*) ; 
 scalar_t__ FUNC1 (struct tm*,int /*<<< orphan*/  const*) ; 

errno_t
FUNC2(_TCHAR *buffer, size_t numberOfElements, const time_t *time)
{
    struct tm _tm;

    if (FUNC1(&_tm, time) == EINVAL)
    {
        return EINVAL;
    }
    return FUNC0(buffer, numberOfElements, &_tm);
}