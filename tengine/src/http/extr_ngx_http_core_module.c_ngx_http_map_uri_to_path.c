
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


typedef char u_char ;
struct TYPE_24__ {size_t len; char* data; } ;
typedef TYPE_6__ ngx_str_t ;
struct TYPE_23__ {size_t len; scalar_t__ data; } ;
struct TYPE_25__ {TYPE_5__ uri; scalar_t__ add_uri_to_alias; int pool; TYPE_1__* connection; int valid_location; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_20__ {size_t len; int data; } ;
struct TYPE_26__ {size_t alias; TYPE_4__* root_values; TYPE_3__* root_lengths; TYPE_2__ root; int name; } ;
typedef TYPE_8__ ngx_http_core_loc_conf_t ;
struct TYPE_22__ {int elts; } ;
struct TYPE_21__ {int elts; } ;
struct TYPE_19__ {int log; } ;
struct TYPE_18__ {int prefix; } ;


 int NGX_LOG_ALERT ;
 size_t NGX_MAX_SIZE_T_VALUE ;
 scalar_t__ NGX_OK ;
 char* ngx_copy (char*,int ,size_t) ;
 char* ngx_cpystrn (char*,scalar_t__,size_t) ;
 TYPE_17__* ngx_cycle ;
 scalar_t__ ngx_get_full_name (int ,TYPE_6__*,TYPE_6__*) ;
 int ngx_http_core_module ;
 TYPE_8__* ngx_http_get_module_loc_conf (TYPE_7__*,int ) ;
 int * ngx_http_script_run (TYPE_7__*,TYPE_6__*,int ,size_t,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;
 char* ngx_pnalloc (int ,size_t) ;

u_char *
ngx_http_map_uri_to_path(ngx_http_request_t *r, ngx_str_t *path,
    size_t *root_length, size_t reserved)
{
    u_char *last;
    size_t alias;
    ngx_http_core_loc_conf_t *clcf;

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    alias = clcf->alias;

    if (alias && !r->valid_location) {
        ngx_log_error(NGX_LOG_ALERT, r->connection->log, 0,
                      "\"alias\" cannot be used in location \"%V\" "
                      "where URI was rewritten", &clcf->name);
        return ((void*)0);
    }

    if (clcf->root_lengths == ((void*)0)) {

        *root_length = clcf->root.len;

        path->len = clcf->root.len + reserved + r->uri.len - alias + 1;

        path->data = ngx_pnalloc(r->pool, path->len);
        if (path->data == ((void*)0)) {
            return ((void*)0);
        }

        last = ngx_copy(path->data, clcf->root.data, clcf->root.len);

    } else {

        if (alias == NGX_MAX_SIZE_T_VALUE) {
            reserved += r->add_uri_to_alias ? r->uri.len + 1 : 1;

        } else {
            reserved += r->uri.len - alias + 1;
        }

        if (ngx_http_script_run(r, path, clcf->root_lengths->elts, reserved,
                                clcf->root_values->elts)
            == ((void*)0))
        {
            return ((void*)0);
        }

        if (ngx_get_full_name(r->pool, (ngx_str_t *) &ngx_cycle->prefix, path)
            != NGX_OK)
        {
            return ((void*)0);
        }

        *root_length = path->len - reserved;
        last = path->data + *root_length;

        if (alias == NGX_MAX_SIZE_T_VALUE) {
            if (!r->add_uri_to_alias) {
                *last = '\0';
                return last;
            }

            alias = 0;
        }
    }

    last = ngx_cpystrn(last, r->uri.data + alias, r->uri.len - alias + 1);

    return last;
}
