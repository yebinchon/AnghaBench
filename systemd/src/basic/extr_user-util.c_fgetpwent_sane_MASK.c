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
typedef  struct passwd* FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct passwd**) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC2 (struct passwd**) ; 

int FUNC3(FILE *stream, struct passwd **pw) {
        struct passwd *p;

        FUNC0(pw);
        FUNC0(stream);

        errno = 0;
        p = FUNC2(stream);
        if (!p && errno != ENOENT)
                return FUNC1(EIO);

        *pw = p;
        return !!p;
}