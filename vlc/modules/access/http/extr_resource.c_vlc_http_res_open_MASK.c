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
struct vlc_http_resource {int negotiate; TYPE_1__* cbs; int /*<<< orphan*/  path; int /*<<< orphan*/  host; int /*<<< orphan*/  manager; int /*<<< orphan*/  port; int /*<<< orphan*/  secure; } ;
struct vlc_http_msg {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* response_validate ) (struct vlc_http_resource*,struct vlc_http_msg*,void*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vlc_http_resource*,struct vlc_http_msg*,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vlc_http_msg* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vlc_http_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_http_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_http_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vlc_http_msg* FUNC6 (struct vlc_http_msg*) ; 
 int FUNC7 (struct vlc_http_msg*) ; 
 struct vlc_http_msg* FUNC8 (struct vlc_http_resource*,void*) ; 

struct vlc_http_msg *FUNC9(struct vlc_http_resource *res,
                                       void *opaque)
{
    struct vlc_http_msg *req;
retry:
    req = FUNC8(res, opaque);
    if (FUNC1(req == NULL))
        return NULL;

    struct vlc_http_msg *resp = FUNC3(res->manager, res->secure,
                                                    res->host, res->port, req);
    FUNC4(req);

    resp = FUNC6(resp);
    if (resp == NULL)
        return NULL;

    FUNC5(resp, FUNC2(res->manager),
                             res->host, res->path);

    int status = FUNC7(resp);
    if (status < 200 || status >= 599)
        goto fail;

    if (status == 406 && res->negotiate)
    {   /* Not Acceptable: Content negotiation failed. Normally it means
         * one (or more) Accept or Accept-* header line does not match any
         * representation of the entity. So we set a flag to remove those
         * header lines (unless they accept everything), and retry.
         * In principles, it could be any header line, and the server can
         * pass Vary to clarify. It cannot be caused by If-*, Range, TE or the
         * other transfer- rather than representation-affecting header lines.
         */
        FUNC4(resp);
        res->negotiate = false;
        goto retry;
    }

    if (res->cbs->response_validate(res, resp, opaque))
        goto fail;

    return resp;
fail:
    FUNC4(resp);
    return NULL;
}