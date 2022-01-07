
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int parent; TYPE_1__* connection; TYPE_2__* main; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef TYPE_4__ ngx_http_posted_request_t ;
struct TYPE_7__ {TYPE_4__* posted_requests; int subrequests; int count; } ;
struct TYPE_6__ {int data; } ;



__attribute__((used)) static void
ngx_http_lua_cancel_subreq(ngx_http_request_t *r)
{
    ngx_http_posted_request_t *pr;
    ngx_http_posted_request_t **p;


    r->main->count--;
    r->main->subrequests++;


    p = &r->main->posted_requests;
    for (pr = r->main->posted_requests; pr->next; pr = pr->next) {
        p = &pr->next;
    }

    *p = ((void*)0);

    r->connection->data = r->parent;
}
