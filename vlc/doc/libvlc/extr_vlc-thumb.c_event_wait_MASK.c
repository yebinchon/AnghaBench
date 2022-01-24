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
struct timespec {int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ETIMEDOUT ; 
 int VLC_THUMBNAIL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ done ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  lock ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC7(const char *error)
{
    int ret;
    struct timespec ts;
#define VLC_THUMBNAIL_TIMEOUT   5 /* 5 secs */

    FUNC1(CLOCK_MONOTONIC, &ts);
    ts.tv_sec += VLC_THUMBNAIL_TIMEOUT;
    FUNC5(&lock);
    ret = done ? 0 : FUNC4(&wait, &lock, &ts);
    FUNC6(&lock);

    FUNC0(!ret || ret == ETIMEDOUT);

    if (ret) {
        FUNC3(stderr,
                "%s (timeout after %d secs!\n", error, VLC_THUMBNAIL_TIMEOUT);
        FUNC2(1);
    }
}