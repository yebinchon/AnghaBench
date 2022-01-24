#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* description; int /*<<< orphan*/  event; int /*<<< orphan*/  by_uid; int /*<<< orphan*/  methods; } ;
typedef  TYPE_1__ VarlinkServer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static VarlinkServer* FUNC6(VarlinkServer *s) {
        char *m;

        if (!s)
                return NULL;

        FUNC5(s);

        while ((m = FUNC2(s->methods)))
                FUNC0(m);

        FUNC1(s->methods);
        FUNC1(s->by_uid);

        FUNC4(s->event);

        FUNC0(s->description);

        return FUNC3(s);
}