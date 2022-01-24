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
struct msghdr {int msg_iovlen; struct iovec* msg_iov; } ;
struct iovec {scalar_t__ iov_len; scalar_t__ iov_base; } ;
typedef  int /*<<< orphan*/  header ;
typedef  size_t LogRealm ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iovec FUNC2 (char*) ; 
 int LINE_MAX ; 
 int LOG_FACMASK ; 
 scalar_t__ FUNC3 (int) ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  LOG_TARGET_AUTO ; 
 int /*<<< orphan*/  LOG_TARGET_JOURNAL ; 
 int /*<<< orphan*/  LOG_TARGET_JOURNAL_OR_KMSG ; 
 scalar_t__ LOG_TARGET_NULL ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  PROTECT_ERRNO ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ journal_fd ; 
 int FUNC8 (int,int,char const*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int,char const*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int log_facility ; 
 scalar_t__* log_max_level ; 
 scalar_t__ log_target ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,char*) ; 
 scalar_t__ FUNC11 (scalar_t__,struct msghdr*,int /*<<< orphan*/ ) ; 
 char* FUNC12 (scalar_t__,scalar_t__) ; 

int FUNC13(
                int level,
                int error,
                const char *file,
                int line,
                const char *func,
                const struct iovec input_iovec[],
                size_t n_input_iovec) {

        LogRealm realm = FUNC4(level);
        PROTECT_ERRNO;
        size_t i;
        char *m;

        if (FUNC6(FUNC3(level) > log_max_level[realm]) ||
            log_target == LOG_TARGET_NULL)
                return -FUNC0(error);

        if ((level & LOG_FACMASK) == 0)
                level |= log_facility;

        if (FUNC1(log_target, LOG_TARGET_AUTO,
                               LOG_TARGET_JOURNAL_OR_KMSG,
                               LOG_TARGET_JOURNAL) &&
            journal_fd >= 0) {

                struct iovec iovec[1 + n_input_iovec*2];
                char header[LINE_MAX];
                struct msghdr mh = {
                        .msg_iov = iovec,
                        .msg_iovlen = 1 + n_input_iovec*2,
                };

                FUNC9(header, sizeof(header), level, error, file, line, func, NULL, NULL, NULL, NULL);
                iovec[0] = FUNC2(header);

                for (i = 0; i < n_input_iovec; i++) {
                        iovec[1+i*2] = input_iovec[i];
                        iovec[1+i*2+1] = FUNC2("\n");
                }

                if (FUNC11(journal_fd, &mh, MSG_NOSIGNAL) >= 0)
                        return -FUNC0(error);
        }

        for (i = 0; i < n_input_iovec; i++)
                if (FUNC10(input_iovec[i].iov_base, input_iovec[i].iov_len, "MESSAGE="))
                        break;

        if (FUNC7(i >= n_input_iovec)) /* Couldn't find MESSAGE=? */
                return -FUNC0(error);

        m = FUNC12(input_iovec[i].iov_base + FUNC5("MESSAGE="),
                     input_iovec[i].iov_len - FUNC5("MESSAGE="));

        return FUNC8(level, error, file, line, func, NULL, NULL, NULL, NULL, m);
}