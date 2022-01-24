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
 scalar_t__ FUNC0 (char const*) ; 
 char* FUNC1 (struct vlc_http_msg const*,char const*) ; 

const char *FUNC2(const struct vlc_http_msg *m)
{
    const char *hname = (m->status < 0) ? "User-Agent" : "Server";
    const char *str = FUNC1(m, hname);

    return (str != NULL && FUNC0(str)) ? str : NULL;
}