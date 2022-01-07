
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_resource {int dummy; } ;
struct vlc_http_mgr {int dummy; } ;


 int free (struct vlc_http_resource*) ;
 struct vlc_http_resource* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_http_live_callbacks ;
 scalar_t__ vlc_http_res_init (struct vlc_http_resource*,int *,struct vlc_http_mgr*,char const*,char const*,char const*) ;

struct vlc_http_resource *vlc_http_live_create(struct vlc_http_mgr *mgr,
                                               const char *uri, const char *ua,
                                               const char *ref)
{
    struct vlc_http_resource *res = malloc(sizeof (*res));
    if (unlikely(res == ((void*)0)))
        return ((void*)0);

    if (vlc_http_res_init(res, &vlc_http_live_callbacks, mgr, uri, ua, ref))
    {
        free(res);
        res = ((void*)0);
    }

    return res;
}
