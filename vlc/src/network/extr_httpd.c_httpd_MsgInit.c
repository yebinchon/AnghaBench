
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_version; int * p_body; scalar_t__ i_body; scalar_t__ i_body_offset; int * p_headers; scalar_t__ i_headers; int * psz_args; int * psz_url; scalar_t__ i_status; int i_proto; int i_type; int * cl; } ;
typedef TYPE_1__ httpd_message_t ;


 int HTTPD_MSG_NONE ;
 int HTTPD_PROTO_NONE ;

__attribute__((used)) static void httpd_MsgInit(httpd_message_t *msg)
{
    msg->cl = ((void*)0);
    msg->i_type = HTTPD_MSG_NONE;
    msg->i_proto = HTTPD_PROTO_NONE;
    msg->i_version = -1;

    msg->i_status = 0;

    msg->psz_url = ((void*)0);
    msg->psz_args = ((void*)0);

    msg->i_headers = 0;
    msg->p_headers = ((void*)0);

    msg->i_body_offset = 0;
    msg->i_body = 0;
    msg->p_body = ((void*)0);
}
