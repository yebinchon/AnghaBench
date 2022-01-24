#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_file_info_t ;
struct TYPE_3__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_cycle_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_PIPE_DIR_ACCESS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_errno ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static void
FUNC6(char *filename, ngx_cycle_t *cycle)
{
    ngx_file_info_t stat_buf;
    char            dirname[1024];
    char           *p;

    for (p = filename; (p = FUNC5(p, '/')); p++)
    {
        if (p == filename) {
            continue;       // Don't bother with the root directory
        }

        FUNC4(dirname, filename, p - filename);
        dirname[p-filename] = '\0';

        if (FUNC2(dirname, &stat_buf) < 0) {
            if (errno != ENOENT) {
                FUNC3(NGX_LOG_EMERG, cycle->log, ngx_errno,
                              "stat [%s] failed", dirname);
                FUNC0(2);

            } else {
                if ((FUNC1(dirname, NGX_PIPE_DIR_ACCESS) < 0) && (errno != EEXIST)) {
                    FUNC3(NGX_LOG_EMERG, cycle->log, ngx_errno,
                                  "mkdir [%s] failed", dirname);
                    FUNC0(2);
                }
            }
        }
    }
}