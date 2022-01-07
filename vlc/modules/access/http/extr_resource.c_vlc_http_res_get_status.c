
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_resource {int failure; int * response; } ;


 int vlc_http_msg_get_status (int *) ;
 int * vlc_http_res_open (struct vlc_http_resource*,struct vlc_http_resource*) ;

int vlc_http_res_get_status(struct vlc_http_resource *res)
{
    if (res->response == ((void*)0))
    {
        if (res->failure)
            return -1;

        res->response = vlc_http_res_open(res, res + 1);
        if (res->response == ((void*)0))
        {
            res->failure = 1;
            return -1;
        }
    }
    return vlc_http_msg_get_status(res->response);
}
