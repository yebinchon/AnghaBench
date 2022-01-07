
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_7__ {TYPE_1__* main; int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_2__* request; } ;
typedef TYPE_3__ ngx_http_posted_request_t ;
struct TYPE_6__ {TYPE_3__* posted_requests; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_3__* ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_post_request_to_head(ngx_http_request_t *r)
{
    ngx_http_posted_request_t *pr;

    pr = ngx_palloc(r->pool, sizeof(ngx_http_posted_request_t));
    if (pr == ((void*)0)) {
        return NGX_ERROR;
    }

    pr->request = r;
    pr->next = r->main->posted_requests;
    r->main->posted_requests = pr;

    return NGX_OK;
}
