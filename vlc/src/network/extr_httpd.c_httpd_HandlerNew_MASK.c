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
typedef  int /*<<< orphan*/  httpd_host_t ;
struct TYPE_5__ {int /*<<< orphan*/  url; void* p_sys; int /*<<< orphan*/  pf_fill; } ;
typedef  TYPE_1__ httpd_handler_t ;
typedef  int /*<<< orphan*/  httpd_handler_callback_t ;
typedef  int /*<<< orphan*/  httpd_callback_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  HTTPD_MSG_GET ; 
 int /*<<< orphan*/  HTTPD_MSG_HEAD ; 
 int /*<<< orphan*/  HTTPD_MSG_POST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  httpd_HandlerCallBack ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char const*,char const*) ; 
 TYPE_1__* FUNC3 (int) ; 

httpd_handler_t *FUNC4(httpd_host_t *host, const char *psz_url,
                                  const char *psz_user,
                                  const char *psz_password,
                                  httpd_handler_callback_t pf_fill,
                                  void *p_sys)
{
    httpd_handler_t *handler = FUNC3(sizeof(*handler));
    if (!handler)
        return NULL;

    handler->url = FUNC2(host, psz_url, psz_user, psz_password);
    if (!handler->url) {
        FUNC0(handler);
        return NULL;
    }

    handler->pf_fill = pf_fill;
    handler->p_sys   = p_sys;

    FUNC1(handler->url, HTTPD_MSG_HEAD, httpd_HandlerCallBack,
                    (httpd_callback_sys_t*)handler);
    FUNC1(handler->url, HTTPD_MSG_GET,  httpd_HandlerCallBack,
                    (httpd_callback_sys_t*)handler);
    FUNC1(handler->url, HTTPD_MSG_POST, httpd_HandlerCallBack,
                    (httpd_callback_sys_t*)handler);

    return handler;
}