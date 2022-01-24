#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {scalar_t__ n_stdout_streams; int /*<<< orphan*/  event; } ;
typedef  int /*<<< orphan*/  StdoutStream ;
typedef  TYPE_1__ Server ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  SIOCINQ ; 
 int SOCK_CLOEXEC ; 
 int SOCK_NONBLOCK ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * stream_fds ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 

int FUNC12(const uint8_t *data, size_t size) {
        Server s;
        StdoutStream *stream;
        int v;

        if (size == 0 || size > 65536)
                return 0;

        if (!FUNC2("SYSTEMD_LOG_LEVEL"))
                FUNC4(LOG_CRIT);

        FUNC0(FUNC8(AF_UNIX, SOCK_STREAM|SOCK_CLOEXEC|SOCK_NONBLOCK, 0, stream_fds) >= 0);
        FUNC1(&s, NULL, 0);
        FUNC0(FUNC10(&s, stream_fds[0], &stream) >= 0);
        FUNC0(FUNC11(stream_fds[1], data, size) == (ssize_t) size);
        while (FUNC3(stream_fds[0], SIOCINQ, &v) == 0 && v)
                FUNC6(s.event, (uint64_t) -1);
        if (s.n_stdout_streams)
                FUNC9(stream);
        FUNC7(&s);
        stream_fds[1] = FUNC5(stream_fds[1]);

        return 0;
}