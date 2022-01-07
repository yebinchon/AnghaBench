
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_5__ {int pool; TYPE_2__* postponed; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_6__ {int * out; struct TYPE_6__* next; int * request; } ;
typedef TYPE_2__ ngx_http_postponed_request_t ;
typedef int ngx_chain_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_chain_add_copy (int ,int **,int *) ;
 TYPE_2__* ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_postpone_filter_add(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_http_postponed_request_t *pr, **ppr;

    if (r->postponed) {
        for (pr = r->postponed; pr->next; pr = pr->next) { }

        if (pr->request == ((void*)0)) {
            goto found;
        }

        ppr = &pr->next;

    } else {
        ppr = &r->postponed;
    }

    pr = ngx_palloc(r->pool, sizeof(ngx_http_postponed_request_t));
    if (pr == ((void*)0)) {
        return NGX_ERROR;
    }

    *ppr = pr;

    pr->request = ((void*)0);
    pr->out = ((void*)0);
    pr->next = ((void*)0);

found:

    if (ngx_chain_add_copy(r->pool, &pr->out, in) == NGX_OK) {
        return NGX_OK;
    }

    return NGX_ERROR;
}
