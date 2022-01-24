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
struct vlc_http_msg {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (struct vlc_http_msg*,char const*,char*,char const*) ; 

int FUNC2(struct vlc_http_msg *m, const char *str)
{
    const char *hname = (m->status < 0) ? "User-Agent" : "Server";

    if (!FUNC0(str))
    {
        errno = EINVAL;
        return -1;
    }
    return FUNC1(m, hname, "%s", str);
}