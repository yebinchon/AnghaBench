
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct vlc_http_resource {int response; } ;


 int vlc_http_msg_get_file_size (int ) ;
 int vlc_http_msg_get_size (int ) ;
 int vlc_http_res_get_status (struct vlc_http_resource*) ;

uintmax_t vlc_http_file_get_size(struct vlc_http_resource *res)
{
    int status = vlc_http_res_get_status(res);
    if (status < 0)
        return -1;

    uintmax_t ret = vlc_http_msg_get_file_size(res->response);
    if (ret != (uintmax_t)-1)
        return ret;

    if (status >= 300 || status == 201)
        return -1;



    return vlc_http_msg_get_size(res->response);
}
