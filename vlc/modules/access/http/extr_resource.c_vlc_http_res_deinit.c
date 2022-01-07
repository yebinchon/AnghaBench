
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_resource {int * response; int host; int authority; int path; int username; int password; int agent; int referrer; } ;


 int free (int ) ;
 int vlc_http_msg_destroy (int *) ;

__attribute__((used)) static void vlc_http_res_deinit(struct vlc_http_resource *res)
{
    free(res->referrer);
    free(res->agent);
    free(res->password);
    free(res->username);
    free(res->path);
    free(res->authority);
    free(res->host);

    if (res->response != ((void*)0))
        vlc_http_msg_destroy(res->response);
}
