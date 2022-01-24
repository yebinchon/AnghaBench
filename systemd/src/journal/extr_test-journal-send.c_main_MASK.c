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
struct iovec {char* member_0; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/  huge ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (char*,char*,...) ; 
 scalar_t__ FUNC9 (struct iovec*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

int FUNC13(int argc, char *argv[]) {
        char huge[4096*1024];

        /* utf-8 and non-utf-8, message-less and message-ful iovecs */
        struct iovec graph1[] = {
                {(char*) "GRAPH=graph", FUNC0("GRAPH=graph")}
        };
        struct iovec graph2[] = {
                {(char*) "GRAPH=graph\n", FUNC0("GRAPH=graph\n")}
        };
        struct iovec message1[] = {
                {(char*) "MESSAGE=graph", FUNC0("MESSAGE=graph")}
        };
        struct iovec message2[] = {
                {(char*) "MESSAGE=graph\n", FUNC0("MESSAGE=graph\n")}
        };

        FUNC1(FUNC7(LOG_INFO, "piepapo") == 0);

        FUNC1(FUNC8("MESSAGE=foobar",
                                  "VALUE=%i", 7,
                                  NULL) == 0);

        errno = ENOENT;
        FUNC1(FUNC6("Foobar") == 0);

        FUNC1(FUNC6("") == 0);

        FUNC5(huge, 'x', sizeof(huge));
        FUNC4(huge, "HUGE=", 5);
        FUNC2(huge);

        FUNC1(FUNC8("MESSAGE=Huge field attached",
                                  huge,
                                  NULL) == 0);

        FUNC1(FUNC8("MESSAGE=uiui",
                                  "VALUE=A",
                                  "VALUE=B",
                                  "VALUE=C",
                                  "SINGLETON=1",
                                  "OTHERVALUE=X",
                                  "OTHERVALUE=Y",
                                  "WITH_BINARY=this is a binary value \a",
                                  NULL) == 0);

        FUNC12(LOG_NOTICE, "Hello World!");

        FUNC1(FUNC7(LOG_NOTICE, "Hello World") == 0);

        FUNC1(FUNC8("MESSAGE=Hello World!",
                                  "MESSAGE_ID=52fb62f99e2c49d89cfbf9d6de5e3555",
                                  "PRIORITY=5",
                                  "HOME=%s", FUNC3("HOME"),
                                  "TERM=%s", FUNC3("TERM"),
                                  "PAGE_SIZE=%li", FUNC11(_SC_PAGESIZE),
                                  "N_CPUS=%li", FUNC11(_SC_NPROCESSORS_ONLN),
                                  NULL) == 0);

        FUNC1(FUNC9(graph1, 1) == 0);
        FUNC1(FUNC9(graph2, 1) == 0);
        FUNC1(FUNC9(message1, 1) == 0);
        FUNC1(FUNC9(message2, 1) == 0);

        /* test without location fields */
#undef sd_journal_sendv
        FUNC1(FUNC9(graph1, 1) == 0);
        FUNC1(FUNC9(graph2, 1) == 0);
        FUNC1(FUNC9(message1, 1) == 0);
        FUNC1(FUNC9(message2, 1) == 0);

        FUNC10(1);

        return 0;
}