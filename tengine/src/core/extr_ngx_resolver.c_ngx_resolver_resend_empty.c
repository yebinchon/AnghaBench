
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_3__ {int addr_resend_queue; int addr6_resend_queue; int srv_resend_queue; int name_resend_queue; } ;
typedef TYPE_1__ ngx_resolver_t ;


 scalar_t__ ngx_queue_empty (int *) ;

__attribute__((used)) static ngx_uint_t
ngx_resolver_resend_empty(ngx_resolver_t *r)
{
    return ngx_queue_empty(&r->name_resend_queue)
           && ngx_queue_empty(&r->srv_resend_queue)



           && ngx_queue_empty(&r->addr_resend_queue);
}
