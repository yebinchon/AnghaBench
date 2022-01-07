
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_buffer; int query; int answer; int sock; int node; } ;
typedef TYPE_1__ httpd_client_t ;


 int free (TYPE_1__*) ;
 int httpd_MsgClean (int *) ;
 int vlc_list_remove (int *) ;
 int vlc_tls_Close (int ) ;

__attribute__((used)) static void httpd_ClientDestroy(httpd_client_t *cl)
{
    vlc_list_remove(&cl->node);
    vlc_tls_Close(cl->sock);
    httpd_MsgClean(&cl->answer);
    httpd_MsgClean(&cl->query);

    free(cl->p_buffer);
    free(cl);
}
