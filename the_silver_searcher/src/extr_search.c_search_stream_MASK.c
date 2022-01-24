#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_2__ {size_t stream_line_num; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,size_t*,int /*<<< orphan*/ *) ; 
 TYPE_1__ opts ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 
 int FUNC5 (char*,int,char const*) ; 

ssize_t FUNC6(FILE *stream, const char *path) {
    char *line = NULL;
    ssize_t matches_count = 0;
    ssize_t line_len = 0;
    size_t line_cap = 0;
    size_t i;

    FUNC3();

    for (i = 1; (line_len = FUNC1(&line, &line_cap, stream)) > 0; i++) {
        ssize_t result;
        opts.stream_line_num = i;
        result = FUNC5(line, line_len, path);
        if (result > 0) {
            if (matches_count == -1) {
                matches_count = 0;
            }
            matches_count += result;
        } else if (matches_count <= 0 && result == -1) {
            matches_count = -1;
        }
        if (line[line_len - 1] == '\n') {
            line_len--;
        }
        FUNC4(path, line, line_len);
    }

    FUNC0(line);
    FUNC2();
    return matches_count;
}