
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msg {int error; int err; struct msg* peer; } ;
typedef scalar_t__ rstatus_t ;
struct TYPE_2__ {int len; int data; } ;


 scalar_t__ NC_OK ;
 int errno ;
 scalar_t__ msg_append (struct msg*,int ,int ) ;
 TYPE_1__ rsp_ok ;

void
redis_post_coalesce_mset(struct msg *request)
{
    rstatus_t status;
    struct msg *response = request->peer;

    status = msg_append(response, rsp_ok.data, rsp_ok.len);
    if (status != NC_OK) {
        response->error = 1;
        response->err = errno;
    }
}
