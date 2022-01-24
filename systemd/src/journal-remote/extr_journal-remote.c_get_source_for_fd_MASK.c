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
typedef  int /*<<< orphan*/  Writer ;
struct TYPE_4__ {int /*<<< orphan*/ ** sources; int /*<<< orphan*/  active; int /*<<< orphan*/  sources_size; } ;
typedef  int /*<<< orphan*/  RemoteSource ;
typedef  TYPE_1__ RemoteServer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ **) ; 
 int FUNC3 () ; 
 int FUNC4 (int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(RemoteServer *s,
                             int fd, char *name, RemoteSource **source) {
        Writer *writer;
        int r;

        /* This takes ownership of name, but only on success. */

        FUNC1(fd >= 0);
        FUNC1(source);

        if (!FUNC0(s->sources, s->sources_size, fd + 1))
                return FUNC3();

        r = FUNC2(s, name, &writer);
        if (r < 0)
                return FUNC4(r, "Failed to get writer for source %s: %m",
                                         name);

        if (!s->sources[fd]) {
                s->sources[fd] = FUNC5(fd, false, name, writer);
                if (!s->sources[fd]) {
                        FUNC6(writer);
                        return FUNC3();
                }

                s->active++;
        }

        *source = s->sources[fd];
        return 0;
}