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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC2(FILE *f)
{
    long              cur_pos, len;

    cur_pos = FUNC1(f);
    if (cur_pos == -1) {
        return -1;
    }

    if (FUNC0(f, 0, SEEK_END) != 0) {
        return -1;
    }

    len = FUNC1(f);
    if (len == -1) {
        return -1;
    }

    if (FUNC0(f, cur_pos, SEEK_SET) != 0) {
        return -1;
    }

    return len;
}