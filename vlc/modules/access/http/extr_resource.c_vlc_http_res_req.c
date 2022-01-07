
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_http_resource {char const* referrer; TYPE_1__* cbs; int manager; int * agent; int * password; int * username; scalar_t__ negotiate; int path; int authority; scalar_t__ secure; } ;
struct vlc_http_msg {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* request_format ) (struct vlc_http_resource const*,struct vlc_http_msg*,void*) ;} ;


 int strcmp (char const*,char*) ;
 scalar_t__ stub1 (struct vlc_http_resource const*,struct vlc_http_msg*,void*) ;
 scalar_t__ unlikely (int ) ;
 char* vlc_gettext (char*) ;
 int vlc_http_mgr_get_jar (int ) ;
 int vlc_http_msg_add_agent (struct vlc_http_msg*,int *) ;
 int vlc_http_msg_add_cookies (struct vlc_http_msg*,int ) ;
 int vlc_http_msg_add_creds_basic (struct vlc_http_msg*,int,int *,int *) ;
 int vlc_http_msg_add_header (struct vlc_http_msg*,char*,char*,...) ;
 int vlc_http_msg_destroy (struct vlc_http_msg*) ;
 struct vlc_http_msg* vlc_http_req_create (char*,char*,int ,int ) ;

__attribute__((used)) static struct vlc_http_msg *
vlc_http_res_req(const struct vlc_http_resource *res, void *opaque)
{
    struct vlc_http_msg *req;

    req = vlc_http_req_create("GET", res->secure ? "https" : "http",
                              res->authority, res->path);
    if (unlikely(req == ((void*)0)))
        return ((void*)0);


    vlc_http_msg_add_header(req, "Accept", "*/*");

    if (res->negotiate)
    {
        const char *lang = vlc_gettext("C");
        if (!strcmp(lang, "C"))
            lang = "en_US";
        vlc_http_msg_add_header(req, "Accept-Language", "%s", lang);
    }


    if (res->username != ((void*)0) && res->password != ((void*)0))
        vlc_http_msg_add_creds_basic(req, 0, res->username, res->password);


    if (res->agent != ((void*)0))
        vlc_http_msg_add_agent(req, res->agent);

    if (res->referrer != ((void*)0))
        vlc_http_msg_add_header(req, "Referer", "%s", res->referrer);

    vlc_http_msg_add_cookies(req, vlc_http_mgr_get_jar(res->manager));



    if (res->cbs->request_format(res, req, opaque))
    {
        vlc_http_msg_destroy(req);
        return ((void*)0);
    }

    return req;
}
