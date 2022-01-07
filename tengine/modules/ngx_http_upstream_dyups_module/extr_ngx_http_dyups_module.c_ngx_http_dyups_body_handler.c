
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_18__ {int len; int data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_19__ {scalar_t__ method; TYPE_2__* connection; TYPE_1__* request_body; int uri; int pool; } ;
typedef TYPE_4__ ngx_http_request_t ;
typedef int ngx_buf_t ;
struct TYPE_20__ {int nelts; TYPE_3__* elts; } ;
typedef TYPE_5__ ngx_array_t ;
struct TYPE_17__ {int log; } ;
struct TYPE_16__ {scalar_t__ temp_file; int * bufs; } ;


 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_HTTP_NOT_ALLOWED ;
 int NGX_HTTP_NOT_FOUND ;
 int NGX_HTTP_NO_CONTENT ;
 scalar_t__ NGX_HTTP_POST ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 TYPE_5__* ngx_dyups_parse_path (int ,int *) ;
 int ngx_dyups_update_upstream (TYPE_3__*,int *,TYPE_3__*) ;
 int * ngx_http_dyups_read_body (TYPE_4__*) ;
 int * ngx_http_dyups_read_body_from_file (TYPE_4__*) ;
 int ngx_http_dyups_send_response (TYPE_4__*,int ,TYPE_3__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_3__*) ;
 int ngx_str_set (TYPE_3__*,char*) ;
 scalar_t__ ngx_strncasecmp (int ,int *,int) ;

__attribute__((used)) static void
ngx_http_dyups_body_handler(ngx_http_request_t *r)
{
    ngx_str_t *value, rv, name;
    ngx_int_t status;
    ngx_buf_t *body;
    ngx_array_t *res;

    ngx_str_set(&rv, "");

    if (r->method != NGX_HTTP_POST) {
        status = NGX_HTTP_NOT_ALLOWED;
        goto finish;
    }

    res = ngx_dyups_parse_path(r->pool, &r->uri);
    if (res == ((void*)0)) {
        ngx_str_set(&rv, "out of memory");
        status = NGX_HTTP_INTERNAL_SERVER_ERROR;
        goto finish;
    }

    if (r->request_body == ((void*)0) || r->request_body->bufs == ((void*)0)) {
        status = NGX_HTTP_NO_CONTENT;
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "[dyups] interface no content");
        ngx_str_set(&rv, "no content\n");
        goto finish;
    }

    if (r->request_body->temp_file) {

        body = ngx_http_dyups_read_body_from_file(r);
    } else {

        body = ngx_http_dyups_read_body(r);
    }

    if (body == ((void*)0)) {
        status = NGX_HTTP_INTERNAL_SERVER_ERROR;
        ngx_str_set(&rv, "out of memory\n");
        goto finish;
    }

    if (res->nelts != 2) {
        ngx_str_set(&rv, "not support this interface");
        status = NGX_HTTP_NOT_FOUND;
        goto finish;
    }






    value = res->elts;

    if (value[0].len != 8
        || ngx_strncasecmp(value[0].data, (u_char *) "upstream", 8) != 0)
    {
        ngx_str_set(&rv, "not support this api");
        status = NGX_HTTP_NOT_FOUND;
        goto finish;
    }

    name = value[1];

    ngx_log_error(NGX_LOG_INFO, r->connection->log, 0,
                  "[dyups] post upstream name: %V", &name);

    status = ngx_dyups_update_upstream(&name, body, &rv);

finish:

    ngx_http_dyups_send_response(r, status, &rv);
}
