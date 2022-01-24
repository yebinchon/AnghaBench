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
 int FUNC0 (int /*<<< orphan*/ ,char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const) ; 

__attribute__((used)) static int FUNC3(p_buffer buf, luaL_Buffer *b) {
    int err = IO_DONE;
    while (err == IO_DONE) {
        size_t count, pos; const char *data;
        err = FUNC0(buf, &data, &count);
        pos = 0;
        while (pos < count && data[pos] != '\n') {
            /* we ignore all \r's */
            if (data[pos] != '\r') FUNC2(b, data[pos]);
            pos++;
        }
        if (pos < count) { /* found '\n' */
            FUNC1(buf, pos+1); /* skip '\n' too */
            break; /* we are done */
        } else /* reached the end of the buffer */
            FUNC1(buf, pos);
    }
    return err;
}