
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;
typedef struct TYPE_37__ TYPE_14__ ;
typedef struct TYPE_36__ TYPE_12__ ;
typedef struct TYPE_35__ TYPE_11__ ;
typedef struct TYPE_34__ TYPE_10__ ;


typedef size_t ngx_uint_t ;
struct TYPE_40__ {int len; int data; } ;
struct TYPE_42__ {TYPE_3__ value; } ;
typedef TYPE_5__ ngx_table_elt_t ;
struct TYPE_43__ {char* data; size_t len; } ;
typedef TYPE_6__ ngx_str_t ;
typedef int ngx_pool_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_44__ {int in_closed; TYPE_11__* request; TYPE_9__* node; int * pool; TYPE_10__* connection; } ;
typedef TYPE_7__ ngx_http_v2_stream_t ;
typedef int ngx_http_v2_srv_conf_t ;
struct TYPE_39__ {scalar_t__ len; } ;
struct TYPE_45__ {int offset; TYPE_2__ name; } ;
typedef TYPE_8__ ngx_http_v2_parse_header_t ;
struct TYPE_46__ {int id; int weight; TYPE_7__* stream; int reuse; int * parent; int index; } ;
typedef TYPE_9__ ngx_http_v2_node_t ;
struct TYPE_34__ {TYPE_4__* connection; int last_push; int closed_nodes; int closed; int * streams_index; TYPE_1__* http_connection; } ;
typedef TYPE_10__ ngx_http_v2_connection_t ;
struct TYPE_35__ {int headers_in; TYPE_6__ schema; int method; int method_name; TYPE_12__* connection; } ;
typedef TYPE_11__ ngx_http_request_t ;
struct TYPE_36__ {TYPE_14__* write; } ;
typedef TYPE_12__ ngx_connection_t ;
struct TYPE_41__ {int error; int log; } ;
struct TYPE_38__ {int conf_ctx; } ;
struct TYPE_37__ {int handler; } ;


 scalar_t__ NGX_ABORT ;
 scalar_t__ NGX_DECLINED ;
 int NGX_HTTP_BAD_REQUEST ;
 int NGX_HTTP_GET ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_HTTP_V2_DEFAULT_WEIGHT ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int * ngx_create_pool (int,int ) ;
 int ngx_destroy_pool (int *) ;
 int ngx_http_core_get_method ;
 int ngx_http_finalize_request (TYPE_11__*,int ) ;
 int * ngx_http_get_module_srv_conf (int ,int ) ;
 int ngx_http_run_posted_requests (TYPE_12__*) ;
 int ngx_http_v2_close_stream (TYPE_7__*,int ) ;
 TYPE_7__* ngx_http_v2_create_stream (TYPE_10__*,int) ;
 TYPE_9__* ngx_http_v2_get_node_by_id (TYPE_10__*,int ,int) ;
 size_t ngx_http_v2_index (int *,int ) ;
 int ngx_http_v2_module ;
 scalar_t__ ngx_http_v2_parse_header (TYPE_11__*,TYPE_8__*,TYPE_6__*) ;
 TYPE_8__* ngx_http_v2_parse_headers ;
 scalar_t__ ngx_http_v2_parse_path (TYPE_11__*,TYPE_6__*) ;
 int ngx_http_v2_run_request_handler ;
 scalar_t__ ngx_http_v2_send_rst_stream (TYPE_10__*,int ,int ) ;
 int ngx_http_v2_set_dependency (TYPE_10__*,TYPE_9__*,int ,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;
 int ngx_memcpy (char*,int ,int) ;
 char* ngx_pnalloc (int *,int) ;
 int ngx_post_event (TYPE_14__*,int *) ;
 int ngx_posted_events ;
 void* ngx_pstrdup (int *,TYPE_6__*) ;
 int ngx_queue_insert_tail (int *,int *) ;
 int ngx_queue_remove (int *) ;

ngx_http_v2_stream_t *
ngx_http_v2_push_stream(ngx_http_v2_stream_t *parent, ngx_str_t *path)
{
    ngx_int_t rc;
    ngx_str_t value;
    ngx_pool_t *pool;
    ngx_uint_t index;
    ngx_table_elt_t **h;
    ngx_connection_t *fc;
    ngx_http_request_t *r;
    ngx_http_v2_node_t *node;
    ngx_http_v2_stream_t *stream;
    ngx_http_v2_srv_conf_t *h2scf;
    ngx_http_v2_connection_t *h2c;
    ngx_http_v2_parse_header_t *header;

    h2c = parent->connection;

    pool = ngx_create_pool(1024, h2c->connection->log);
    if (pool == ((void*)0)) {
        goto rst_stream;
    }

    node = ngx_http_v2_get_node_by_id(h2c, h2c->last_push, 1);

    if (node == ((void*)0)) {
        ngx_destroy_pool(pool);
        goto rst_stream;
    }

    stream = ngx_http_v2_create_stream(h2c, 1);
    if (stream == ((void*)0)) {

        if (node->parent == ((void*)0)) {
            h2scf = ngx_http_get_module_srv_conf(h2c->http_connection->conf_ctx,
                                                 ngx_http_v2_module);

            index = ngx_http_v2_index(h2scf, h2c->last_push);
            h2c->streams_index[index] = node->index;

            ngx_queue_insert_tail(&h2c->closed, &node->reuse);
            h2c->closed_nodes++;
        }

        ngx_destroy_pool(pool);
        goto rst_stream;
    }

    if (node->parent) {
        ngx_queue_remove(&node->reuse);
        h2c->closed_nodes--;
    }

    stream->pool = pool;

    r = stream->request;
    fc = r->connection;

    stream->in_closed = 1;
    stream->node = node;

    node->stream = stream;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 push stream sid:%ui "
                   "depends on %ui excl:0 weight:16",
                   h2c->last_push, parent->node->id);

    node->weight = NGX_HTTP_V2_DEFAULT_WEIGHT;
    ngx_http_v2_set_dependency(h2c, node, parent->node->id, 0);

    r->method_name = ngx_http_core_get_method;
    r->method = NGX_HTTP_GET;

    r->schema.data = ngx_pstrdup(pool, &parent->request->schema);
    if (r->schema.data == ((void*)0)) {
        goto close;
    }

    r->schema.len = parent->request->schema.len;

    value.data = ngx_pstrdup(pool, path);
    if (value.data == ((void*)0)) {
        goto close;
    }

    value.len = path->len;

    rc = ngx_http_v2_parse_path(r, &value);

    if (rc != NGX_OK) {
        goto error;
    }

    for (header = ngx_http_v2_parse_headers; header->name.len; header++) {
        h = (ngx_table_elt_t **)
                ((char *) &parent->request->headers_in + header->offset);

        if (*h == ((void*)0)) {
            continue;
        }

        value.len = (*h)->value.len;

        value.data = ngx_pnalloc(pool, value.len + 1);
        if (value.data == ((void*)0)) {
            goto close;
        }

        ngx_memcpy(value.data, (*h)->value.data, value.len);
        value.data[value.len] = '\0';

        rc = ngx_http_v2_parse_header(r, header, &value);

        if (rc != NGX_OK) {
            goto error;
        }
    }

    fc->write->handler = ngx_http_v2_run_request_handler;
    ngx_post_event(fc->write, &ngx_posted_events);

    return stream;

error:

    if (rc == NGX_ABORT) {

        ngx_http_run_posted_requests(fc);
        return ((void*)0);
    }

    if (rc == NGX_DECLINED) {
        ngx_http_finalize_request(r, NGX_HTTP_BAD_REQUEST);
        ngx_http_run_posted_requests(fc);
        return ((void*)0);
    }

close:

    ngx_http_v2_close_stream(stream, NGX_HTTP_INTERNAL_SERVER_ERROR);

    return ((void*)0);

rst_stream:

    if (ngx_http_v2_send_rst_stream(h2c, h2c->last_push,
                                    NGX_HTTP_INTERNAL_SERVER_ERROR)
        != NGX_OK)
    {
        h2c->connection->error = 1;
    }

    return ((void*)0);
}
