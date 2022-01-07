
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dst; } ;
typedef TYPE_1__ httpd_redirect_t ;
struct TYPE_9__ {int i_version; int i_status; unsigned char* p_body; int i_body; int i_type; int i_proto; } ;
typedef TYPE_2__ httpd_message_t ;
struct TYPE_10__ {int query; } ;
typedef TYPE_3__ httpd_client_t ;
typedef int httpd_callback_sys_t ;


 int HTTPD_MSG_ANSWER ;
 int HTTPD_PROTO_HTTP ;
 int VLC_SUCCESS ;
 int httpd_HtmlError (char**,int,int ) ;
 int httpd_MsgAdd (TYPE_2__*,char*,char*,...) ;
 int * httpd_MsgGet (int *,char*) ;

__attribute__((used)) static int httpd_RedirectCallBack(httpd_callback_sys_t *p_sys,
                                   httpd_client_t *cl, httpd_message_t *answer,
                                   const httpd_message_t *query)
{
    httpd_redirect_t *rdir = (httpd_redirect_t*)p_sys;
    char *p_body;
    (void)cl;

    if (!answer || !query)
        return VLC_SUCCESS;

    answer->i_proto = HTTPD_PROTO_HTTP;
    answer->i_version= 1;
    answer->i_type = HTTPD_MSG_ANSWER;
    answer->i_status = 301;

    answer->i_body = httpd_HtmlError (&p_body, 301, rdir->dst);
    answer->p_body = (unsigned char *)p_body;


    httpd_MsgAdd(answer, "Location", "%s", rdir->dst);

    httpd_MsgAdd(answer, "Content-Length", "%d", answer->i_body);

    if (httpd_MsgGet(&cl->query, "Connection") != ((void*)0))
        httpd_MsgAdd(answer, "Connection", "close");

    return VLC_SUCCESS;
}
