#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ UnitFileList ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int FUNC3(const UnitFileList *a, const UnitFileList *b) {
        const char *d1, *d2;

        d1 = FUNC2(a->path, '.');
        d2 = FUNC2(b->path, '.');

        if (d1 && d2) {
                int r;

                r = FUNC1(d1, d2);
                if (r != 0)
                        return r;
        }

        return FUNC1(FUNC0(a->path), FUNC0(b->path));
}