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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  LOG_LEVEL_DEBUG 131 
#define  LOG_LEVEL_ERR 130 
#define  LOG_LEVEL_MSG 129 
#define  LOG_LEVEL_WARN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned int const log_threshold ; 
 int /*<<< orphan*/ * out_fd ; 
 int /*<<< orphan*/  print_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

void FUNC4(const unsigned int level, const char *fmt, va_list args) {
    if (level < log_threshold) {
        return;
    }

    FUNC1(&print_mtx);
    FILE *stream = out_fd;

    switch (level) {
        case LOG_LEVEL_DEBUG:
            FUNC0(stream, "DEBUG: ");
            break;
        case LOG_LEVEL_MSG:
            FUNC0(stream, "MSG: ");
            break;
        case LOG_LEVEL_WARN:
            FUNC0(stream, "WARN: ");
            break;
        case LOG_LEVEL_ERR:
            stream = stderr;
            FUNC0(stream, "ERR: ");
            break;
    }

    FUNC3(stream, fmt, args);
    FUNC0(stream, "\n");
    FUNC2(&print_mtx);
}