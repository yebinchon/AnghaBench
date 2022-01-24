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
typedef  int /*<<< orphan*/  Writer ;
typedef  int /*<<< orphan*/  RemoteSource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  journal_remote_server_global ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int FUNC4 (int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void **connection_cls, int fd, char *hostname) {
        RemoteSource *source;
        Writer *writer;
        int r;

        FUNC0(connection_cls);
        if (*connection_cls)
                return 0;

        r = FUNC1(journal_remote_server_global, hostname, &writer);
        if (r < 0)
                return FUNC4(r, "Failed to get writer for source %s: %m",
                                         hostname);

        source = FUNC5(fd, true, hostname, writer);
        if (!source) {
                FUNC6(writer);
                return FUNC3();
        }

        FUNC2("Added RemoteSource as connection metadata %p", source);

        *connection_cls = source;
        return 0;
}