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
struct passwd {int dummy; } ;
typedef  struct passwd const FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct passwd const*) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct passwd const*,struct passwd const*) ; 

int FUNC3(const struct passwd *pw, FILE *stream) {
        FUNC0(pw);
        FUNC0(stream);

        errno = 0;
        if (FUNC2(pw, stream) != 0)
                return FUNC1(EIO);

        return 0;
}