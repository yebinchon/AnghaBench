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
 int IO_DONE ; 
 size_t FUNC0 (size_t,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int FUNC4(p_buffer buf, size_t wanted, luaL_Buffer *b) {
    int err = IO_DONE;
    size_t total = 0;
    while (err == IO_DONE) {
        size_t count; const char *data;
        err = FUNC1(buf, &data, &count);
        count = FUNC0(count, wanted - total);
        FUNC3(b, data, count);
        FUNC2(buf, count);
        total += count;
        if (total >= wanted) break;
    }
    return err;
}