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
struct vlc_http_msg {char const*** headers; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC0 (struct vlc_http_msg const*,char const*) ; 

const char *FUNC1(const struct vlc_http_msg *m,
                                    const char *name)
{
    ssize_t idx = FUNC0(m, name);
    if (idx < 0)
    {
        errno = ENOENT;
        return NULL;
    }
    return m->headers[idx][1];
}