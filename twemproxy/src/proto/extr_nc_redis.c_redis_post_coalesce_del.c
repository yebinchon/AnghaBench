
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int error; int err; int integer; struct msg* peer; } ;
typedef scalar_t__ rstatus_t ;


 scalar_t__ NC_OK ;
 int errno ;
 scalar_t__ msg_prepend_format (struct msg*,char*,int ) ;

void
redis_post_coalesce_del(struct msg *request)
{
    struct msg *response = request->peer;
    rstatus_t status;

    status = msg_prepend_format(response, ":%d\r\n", request->integer);
    if (status != NC_OK) {
        response->error = 1;
        response->err = errno;
    }
}
