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
typedef  scalar_t__ ExecOutput ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_OUTPUT_FILE ; 
 int /*<<< orphan*/  EXEC_OUTPUT_FILE_APPEND ; 
 int /*<<< orphan*/  EXEC_OUTPUT_NAMED_FD ; 
 int /*<<< orphan*/  EXEC_OUTPUT_SOCKET ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*) ; 

int FUNC4(
                const char* unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        ExecOutput t, *eo = data;

        FUNC1(filename);
        FUNC1(lvalue);
        FUNC1(rvalue);
        FUNC1(data);

        t = FUNC2(rvalue);
        if (t < 0) {
                FUNC3(unit, LOG_ERR, filename, line, 0, "Failed to parse output type, ignoring: %s", rvalue);
                return 0;
        }

        if (FUNC0(t, EXEC_OUTPUT_SOCKET, EXEC_OUTPUT_NAMED_FD, EXEC_OUTPUT_FILE, EXEC_OUTPUT_FILE_APPEND)) {
                FUNC3(unit, LOG_ERR, filename, line, 0, "Standard output types socket, fd:, file:, append: are not supported as defaults, ignoring: %s", rvalue);
                return 0;
        }

        *eo = t;
        return 0;
}