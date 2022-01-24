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
struct spwd {int dummy; } ;
typedef  struct spwd* FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct spwd**) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct spwd* FUNC2 (struct spwd**) ; 

int FUNC3(FILE *stream, struct spwd **sp) {
        struct spwd *s;

        FUNC0(sp);
        FUNC0(stream);

        errno = 0;
        s = FUNC2(stream);
        if (!s && errno != ENOENT)
                return FUNC1(EIO);

        *sp = s;
        return !!s;
}