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
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t FUNC1(void)
{
    int64_t i_timestamp = FUNC0(NULL);

    i_timestamp += 2082844800; // MOV/MP4 start date is 1/1/1904
    // 208284480 is (((1970 - 1904) * 365) + 17) * 24 * 60 * 60

    return i_timestamp;
}