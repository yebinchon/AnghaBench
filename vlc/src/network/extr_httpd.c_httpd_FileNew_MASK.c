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
struct TYPE_5__ {int /*<<< orphan*/  url; int /*<<< orphan*/  mime; int /*<<< orphan*/ * p_sys; int /*<<< orphan*/  pf_fill; } ;
typedef  TYPE_1__ httpd_file_t ;
typedef  int /*<<< orphan*/  httpd_file_sys_t ;
typedef  int /*<<< orphan*/  httpd_file_callback_t ;
typedef  int /*<<< orphan*/  httpd_callback_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  HTTPD_MSG_GET ; 
 int /*<<< orphan*/  HTTPD_MSG_HEAD ; 
 int /*<<< orphan*/  HTTPD_MSG_POST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  httpd_FileCallBack ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char const*,char const*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char const*) ; 

httpd_file_t *FUNC8(httpd_host_t *host,
                             const char *psz_url, const char *psz_mime,
                             const char *psz_user, const char *psz_password,
                             httpd_file_callback_t pf_fill,
                             httpd_file_sys_t *p_sys)
{
    const char *mime = psz_mime;
    if (mime == NULL || mime[0] == '\0')
        mime = FUNC7(psz_url);

    size_t mimelen = FUNC5(mime);
    httpd_file_t *file = FUNC3(sizeof(*file) + mimelen);
    if (FUNC6(file == NULL))
        return NULL;

    file->url = FUNC2(host, psz_url, psz_user, psz_password);
    if (!file->url) {
        FUNC0(file);
        return NULL;
    }

    file->pf_fill = pf_fill;
    file->p_sys   = p_sys;
    FUNC4(file->mime, mime, mimelen + 1);

    FUNC1(file->url, HTTPD_MSG_HEAD, httpd_FileCallBack,
                    (httpd_callback_sys_t*)file);
    FUNC1(file->url, HTTPD_MSG_GET,  httpd_FileCallBack,
                    (httpd_callback_sys_t*)file);
    FUNC1(file->url, HTTPD_MSG_POST, httpd_FileCallBack,
                    (httpd_callback_sys_t*)file);

    return file;
}