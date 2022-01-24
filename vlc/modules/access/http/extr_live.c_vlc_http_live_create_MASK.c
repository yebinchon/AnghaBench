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
struct vlc_http_resource {int dummy; } ;
struct vlc_http_mgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_http_resource*) ; 
 struct vlc_http_resource* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_http_live_callbacks ; 
 scalar_t__ FUNC3 (struct vlc_http_resource*,int /*<<< orphan*/ *,struct vlc_http_mgr*,char const*,char const*,char const*) ; 

struct vlc_http_resource *FUNC4(struct vlc_http_mgr *mgr,
                                               const char *uri, const char *ua,
                                               const char *ref)
{
    struct vlc_http_resource *res = FUNC1(sizeof (*res));
    if (FUNC2(res == NULL))
        return NULL;

    if (FUNC3(res, &vlc_http_live_callbacks, mgr, uri, ua, ref))
    {
        FUNC0(res);
        res = NULL;
    }

    return res;
}