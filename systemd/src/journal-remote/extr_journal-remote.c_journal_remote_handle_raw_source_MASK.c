#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_10__ {int fd; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  active; int /*<<< orphan*/  seal; int /*<<< orphan*/  compress; TYPE_1__** sources; scalar_t__ sources_size; } ;
struct TYPE_8__ {TYPE_6__ importer; } ;
typedef  TYPE_1__ RemoteSource ;
typedef  TYPE_2__ RemoteServer ;

/* Variables and functions */
 int E2BIG ; 
 int EAGAIN ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (TYPE_6__*) ; 
 scalar_t__ FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

int FUNC8(
                sd_event_source *event,
                int fd,
                uint32_t revents,
                RemoteServer *s) {

        RemoteSource *source;
        int r;

        /* Returns 1 if there might be more data pending,
         * 0 if data is currently exhausted, negative on error.
         */

        FUNC0(fd >= 0 && fd < (ssize_t) s->sources_size);
        source = s->sources[fd];
        FUNC0(source->importer.fd == fd);

        r = FUNC6(source, s->compress, s->seal);
        if (FUNC2(&source->importer)) {
                size_t remaining;

                FUNC3("EOF reached with source %s (fd=%d)",
                          source->importer.name, source->importer.fd);

                remaining = FUNC1(&source->importer);
                if (remaining > 0)
                        FUNC5("Premature EOF. %zu bytes lost.", remaining);
                FUNC7(s, source->importer.fd);
                FUNC3("%zu active sources remaining", s->active);
                return 0;
        } else if (r == -E2BIG) {
                FUNC5("Entry with too many fields, skipped");
                return 1;
        } else if (r == -ENOBUFS) {
                FUNC5("Entry too big, skipped");
                return 1;
        } else if (r == -EAGAIN) {
                return 0;
        } else if (r < 0) {
                FUNC4(r, "Closing connection: %m");
                FUNC7(s, fd);
                return 0;
        } else
                return 1;
}