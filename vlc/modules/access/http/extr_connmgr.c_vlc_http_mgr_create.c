
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int logger; } ;
typedef TYPE_1__ vlc_object_t ;
struct vlc_http_mgr {int * conn; struct vlc_http_cookie_jar_t* jar; int * creds; TYPE_1__* obj; int logger; } ;
struct vlc_http_cookie_jar_t {int dummy; } ;


 struct vlc_http_mgr* malloc (int) ;
 scalar_t__ unlikely (int ) ;

struct vlc_http_mgr *vlc_http_mgr_create(vlc_object_t *obj,
                                         struct vlc_http_cookie_jar_t *jar)
{
    struct vlc_http_mgr *mgr = malloc(sizeof (*mgr));
    if (unlikely(mgr == ((void*)0)))
        return ((void*)0);

    mgr->logger = obj->logger;
    mgr->obj = obj;
    mgr->creds = ((void*)0);
    mgr->jar = jar;
    mgr->conn = ((void*)0);
    return mgr;
}
