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

/* Variables and functions */
 int FUNC0 (struct vlc_http_msg const*) ; 
 int /*<<< orphan*/ * FUNC1 (struct vlc_http_msg const*,char*,char*) ; 

__attribute__((used)) static bool FUNC2(const struct vlc_http_msg *resp)
{
    int status = FUNC0(resp);
    if (status == 206 || status == 416)
        return true; /* Partial Content */

    return FUNC1(resp, "Accept-Ranges", "bytes") != NULL;
}