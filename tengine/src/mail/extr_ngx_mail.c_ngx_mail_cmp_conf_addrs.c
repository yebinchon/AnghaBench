
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bind; scalar_t__ wildcard; } ;
struct TYPE_4__ {TYPE_1__ opt; } ;
typedef TYPE_2__ ngx_mail_conf_addr_t ;
typedef int ngx_int_t ;



__attribute__((used)) static ngx_int_t
ngx_mail_cmp_conf_addrs(const void *one, const void *two)
{
    ngx_mail_conf_addr_t *first, *second;

    first = (ngx_mail_conf_addr_t *) one;
    second = (ngx_mail_conf_addr_t *) two;

    if (first->opt.wildcard) {

        return 1;
    }

    if (second->opt.wildcard) {

        return -1;
    }

    if (first->opt.bind && !second->opt.bind) {

        return -1;
    }

    if (!first->opt.bind && second->opt.bind) {

        return 1;
    }



    return 0;
}
