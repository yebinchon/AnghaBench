
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_resource {int dummy; } ;
struct vlc_http_msg {int dummy; } ;



__attribute__((used)) static int vlc_http_live_resp(const struct vlc_http_resource *res,
                              const struct vlc_http_msg *resp, void *opaque)
{
    (void) res;
    (void) resp;
    (void) opaque;
    return 0;
}
