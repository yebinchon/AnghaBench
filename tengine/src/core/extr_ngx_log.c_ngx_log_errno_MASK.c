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
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_err_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 

u_char *
FUNC2(u_char *buf, u_char *last, ngx_err_t err)
{
    if (buf > last - 50) {

        /* leave a space for an error code */

        buf = last - 50;
        *buf++ = '.';
        *buf++ = '.';
        *buf++ = '.';
    }

#if (NGX_WIN32)
    buf = ngx_slprintf(buf, last, ((unsigned) err < 0x80000000)
                                       ? " (%d: " : " (%Xd: ", err);
#else
    buf = FUNC0(buf, last, " (%d: ", err);
#endif

    buf = FUNC1(err, buf, last - buf);

    if (buf < last) {
        *buf++ = ')';
    }

    return buf;
}