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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static size_t
FUNC3(const char *const *argv, char *buf, size_t bufsize) {
    size_t idx = 0;
    bool first = true;
    while (*argv) {
        const char *arg = *argv;
        size_t len = FUNC2(arg);
        // count space for "[], ...\0"
        if (idx + len + 8 >= bufsize) {
            // not enough space, truncate
            FUNC0(idx < bufsize - 4);
            FUNC1(&buf[idx], "...", 3);
            idx += 3;
            break;
        }
        if (first) {
            first = false;
        } else {
            buf[idx++] = ',';
            buf[idx++] = ' ';
        }
        buf[idx++] = '[';
        FUNC1(&buf[idx], arg, len);
        idx += len;
        buf[idx++] = ']';
        argv++;
    }
    FUNC0(idx < bufsize);
    buf[idx] = '\0';
    return idx;
}