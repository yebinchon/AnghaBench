
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_resource {int dummy; } ;


 int free (struct vlc_http_resource*) ;
 int vlc_http_res_deinit (struct vlc_http_resource*) ;

void vlc_http_res_destroy(struct vlc_http_resource *res)
{
    vlc_http_res_deinit(res);
    free(res);
}
