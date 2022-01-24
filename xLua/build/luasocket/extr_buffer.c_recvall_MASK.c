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
typedef  int /*<<< orphan*/  p_buffer ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int IO_CLOSED ; 
 int IO_DONE ; 
 int FUNC0 (int /*<<< orphan*/ ,char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int FUNC3(p_buffer buf, luaL_Buffer *b) {
    int err = IO_DONE;
    size_t total = 0;
    while (err == IO_DONE) {
        const char *data; size_t count;
        err = FUNC0(buf, &data, &count);
        total += count;
        FUNC2(b, data, count);
        FUNC1(buf, count);
    }
    if (err == IO_CLOSED) {
        if (total > 0) return IO_DONE;
        else return IO_CLOSED;
    } else return err;
}