#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vlc_http_resource {char const* referrer; TYPE_1__* cbs; int /*<<< orphan*/  manager; int /*<<< orphan*/ * agent; int /*<<< orphan*/ * password; int /*<<< orphan*/ * username; scalar_t__ negotiate; int /*<<< orphan*/  path; int /*<<< orphan*/  authority; scalar_t__ secure; } ;
struct vlc_http_msg {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* request_format ) (struct vlc_http_resource const*,struct vlc_http_msg*,void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (struct vlc_http_resource const*,struct vlc_http_msg*,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_http_msg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_http_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_http_msg*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vlc_http_msg*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct vlc_http_msg*) ; 
 struct vlc_http_msg* FUNC10 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vlc_http_msg *
FUNC11(const struct vlc_http_resource *res, void *opaque)
{
    struct vlc_http_msg *req;

    req = FUNC10("GET", res->secure ? "https" : "http",
                              res->authority, res->path);
    if (FUNC2(req == NULL))
        return NULL;

    /* Content negotiation */
    FUNC8(req, "Accept", "*/*");

    if (res->negotiate)
    {
        const char *lang = FUNC3("C");
        if (!FUNC0(lang, "C"))
            lang = "en_US";
        FUNC8(req, "Accept-Language", "%s", lang);
    }

    /* Authentication */
    if (res->username != NULL && res->password != NULL)
        FUNC7(req, false, res->username, res->password);

    /* Request context */
    if (res->agent != NULL)
        FUNC5(req, res->agent);

    if (res->referrer != NULL) /* TODO: validate URL */
        FUNC8(req, "Referer", "%s", res->referrer);

    FUNC6(req, FUNC4(res->manager));

    /* TODO: vlc_http_msg_add_header(req, "TE", "gzip, deflate"); */

    if (res->cbs->request_format(res, req, opaque))
    {
        FUNC9(req);
        return NULL;
    }

    return req;
}