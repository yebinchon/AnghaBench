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
struct group {int dummy; } ;
typedef  struct group* FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct group**) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct group* FUNC2 (struct group**) ; 

int FUNC3(FILE *stream, struct group **gr) {
        struct group *g;

        FUNC0(gr);
        FUNC0(stream);

        errno = 0;
        g = FUNC2(stream);
        if (!g && errno != ENOENT)
                return FUNC1(EIO);

        *gr = g;
        return !!g;
}