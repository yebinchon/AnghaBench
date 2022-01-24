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

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static struct tm *
FUNC1(const time_t *timer, struct tm *result)
{
    struct tm *tmp = FUNC0(timer);

    if (tmp) {
        *result = *tmp;
        return result;
    }
    return tmp;
}