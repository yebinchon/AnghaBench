
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_http_resource {int negotiate; TYPE_1__* cbs; int path; int host; int manager; int port; int secure; } ;
struct vlc_http_msg {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* response_validate ) (struct vlc_http_resource*,struct vlc_http_msg*,void*) ;} ;


 scalar_t__ stub1 (struct vlc_http_resource*,struct vlc_http_msg*,void*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_http_mgr_get_jar (int ) ;
 struct vlc_http_msg* vlc_http_mgr_request (int ,int ,int ,int ,struct vlc_http_msg*) ;
 int vlc_http_msg_destroy (struct vlc_http_msg*) ;
 int vlc_http_msg_get_cookies (struct vlc_http_msg*,int ,int ,int ) ;
 struct vlc_http_msg* vlc_http_msg_get_final (struct vlc_http_msg*) ;
 int vlc_http_msg_get_status (struct vlc_http_msg*) ;
 struct vlc_http_msg* vlc_http_res_req (struct vlc_http_resource*,void*) ;

struct vlc_http_msg *vlc_http_res_open(struct vlc_http_resource *res,
                                       void *opaque)
{
    struct vlc_http_msg *req;
retry:
    req = vlc_http_res_req(res, opaque);
    if (unlikely(req == ((void*)0)))
        return ((void*)0);

    struct vlc_http_msg *resp = vlc_http_mgr_request(res->manager, res->secure,
                                                    res->host, res->port, req);
    vlc_http_msg_destroy(req);

    resp = vlc_http_msg_get_final(resp);
    if (resp == ((void*)0))
        return ((void*)0);

    vlc_http_msg_get_cookies(resp, vlc_http_mgr_get_jar(res->manager),
                             res->host, res->path);

    int status = vlc_http_msg_get_status(resp);
    if (status < 200 || status >= 599)
        goto fail;

    if (status == 406 && res->negotiate)
    {







        vlc_http_msg_destroy(resp);
        res->negotiate = 0;
        goto retry;
    }

    if (res->cbs->response_validate(res, resp, opaque))
        goto fail;

    return resp;
fail:
    vlc_http_msg_destroy(resp);
    return ((void*)0);
}
