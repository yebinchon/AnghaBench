
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_resource {int response; } ;


 char* vlc_http_msg_get_basic_realm (int ) ;
 int vlc_http_res_get_status (struct vlc_http_resource*) ;

char *vlc_http_res_get_basic_realm(struct vlc_http_resource *res)
{
    int status = vlc_http_res_get_status(res);
    if (status != 401)
        return ((void*)0);
    return vlc_http_msg_get_basic_realm(res->response);
}
