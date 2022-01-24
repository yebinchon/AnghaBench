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
struct vlc_http_msg {int dummy; } ;
struct vlc_http_mgr {int dummy; } ;

/* Variables and functions */
 struct vlc_http_msg* FUNC0 (struct vlc_http_mgr*,char const*,unsigned int,struct vlc_http_msg const*) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 struct vlc_http_msg* FUNC2 (struct vlc_http_mgr*,char const*,unsigned int,struct vlc_http_msg const*) ; 
 struct vlc_http_msg* FUNC3 (struct vlc_http_mgr*,char const*,unsigned int,struct vlc_http_msg const*) ; 

struct vlc_http_msg *FUNC4(struct vlc_http_mgr *mgr, bool https,
                                          const char *host, unsigned port,
                                          const struct vlc_http_msg *m)
{
    if (port && FUNC1(port))
        return NULL;

    return (https ? vlc_https_request : vlc_http_request)(mgr, host, port, m);
}