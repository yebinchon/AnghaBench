
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msg {int type; struct conn* owner; struct msg* peer; } ;
struct conn {int dummy; } ;
typedef int rstatus_t ;
struct TYPE_4__ {int len; int data; } ;
struct TYPE_3__ {int len; int data; } ;


 int ASSERT (int) ;
 int MSG_REQ_REDIS_AUTH ;

 int NC_ERROR ;
 int NOT_REACHED () ;
 int conn_authenticated (struct conn*) ;
 int msg_append (struct msg*,int ,int ) ;
 int redis_handle_auth_req (struct msg*,struct msg*) ;
 TYPE_2__ rsp_auth_required ;
 TYPE_1__ rsp_pong ;

rstatus_t
redis_reply(struct msg *r)
{
    struct conn *c_conn;
    struct msg *response = r->peer;

    ASSERT(response != ((void*)0) && response->owner != ((void*)0));

    c_conn = response->owner;
    if (r->type == MSG_REQ_REDIS_AUTH) {
        return redis_handle_auth_req(r, response);
    }

    if (!conn_authenticated(c_conn)) {
        return msg_append(response, rsp_auth_required.data, rsp_auth_required.len);
    }

    switch (r->type) {
    case 128:
        return msg_append(response, rsp_pong.data, rsp_pong.len);

    default:
        NOT_REACHED();
        return NC_ERROR;
    }
}
