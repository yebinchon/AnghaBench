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
struct vlc_tls {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char*,size_t) ; 
 scalar_t__ FUNC5 (struct vlc_tls*,char*,size_t,int) ; 

__attribute__((used)) static char *FUNC6(struct vlc_tls *tls, size_t *restrict lenp)
{
    size_t size = 0, len = 0, canread;
    char *buf = NULL;

    while ((canread = FUNC4(buf, len)) > 0)
    {
        ssize_t val;

        if (len + canread >= size)
        {
            size += 2048;
            if (size > 65536)
                goto fail;

            char *newbuf = FUNC2(buf, size);
            if (FUNC3(newbuf == NULL))
                goto fail;

            buf = newbuf;
        }

        FUNC0(size - len >= canread);
        //vlc_cleanup_push(free, buf);
        val = FUNC5(tls, buf + len, canread, true);
        //vlc_cleanup_pop();

        if (val != (ssize_t)canread)
            goto fail;

        len += val;
    }

    FUNC0(size - len >= 1);
    buf[len] = '\0'; /* for convenience */
    if (lenp != NULL)
        *lenp = len;
    return buf;
fail:
    FUNC1(buf);
    return NULL;
}