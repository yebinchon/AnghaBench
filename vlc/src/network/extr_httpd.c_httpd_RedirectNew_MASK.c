#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  url; int /*<<< orphan*/  dst; } ;
typedef  TYPE_1__ httpd_redirect_t ;
typedef  int /*<<< orphan*/  httpd_host_t ;
typedef  int /*<<< orphan*/  httpd_callback_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  HTTPD_MSG_DESCRIBE ; 
 int /*<<< orphan*/  HTTPD_MSG_GET ; 
 int /*<<< orphan*/  HTTPD_MSG_HEAD ; 
 int /*<<< orphan*/  HTTPD_MSG_POST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  httpd_RedirectCallBack ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

httpd_redirect_t *FUNC7(httpd_host_t *host, const char *psz_url_dst,
                                     const char *psz_url_src)
{
    size_t dstlen = FUNC5(psz_url_dst);

    httpd_redirect_t *rdir = FUNC3(sizeof(*rdir) + dstlen);
    if (FUNC6(rdir == NULL))
        return NULL;

    rdir->url = FUNC2(host, psz_url_src, NULL, NULL);
    if (!rdir->url) {
        FUNC0(rdir);
        return NULL;
    }
    FUNC4(rdir->dst, psz_url_dst, dstlen + 1);

    /* Redirect apply for all HTTP request and RTSP DESCRIBE resquest */
    FUNC1(rdir->url, HTTPD_MSG_HEAD, httpd_RedirectCallBack,
                    (httpd_callback_sys_t*)rdir);
    FUNC1(rdir->url, HTTPD_MSG_GET, httpd_RedirectCallBack,
                    (httpd_callback_sys_t*)rdir);
    FUNC1(rdir->url, HTTPD_MSG_POST, httpd_RedirectCallBack,
                    (httpd_callback_sys_t*)rdir);
    FUNC1(rdir->url, HTTPD_MSG_DESCRIBE, httpd_RedirectCallBack,
                    (httpd_callback_sys_t*)rdir);

    return rdir;
}