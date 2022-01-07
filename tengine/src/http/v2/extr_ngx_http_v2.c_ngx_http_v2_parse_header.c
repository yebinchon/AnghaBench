
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_18__ ;


struct TYPE_23__ {int data; int len; } ;
struct TYPE_22__ {int len; int data; } ;
struct TYPE_24__ {TYPE_4__ value; int hash; TYPE_3__ key; int lowcase_key; } ;
typedef TYPE_5__ ngx_table_elt_t ;
struct TYPE_25__ {int data; int len; } ;
typedef TYPE_6__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_21__ {int len; int data; } ;
struct TYPE_26__ {TYPE_18__* hh; int hash; TYPE_2__ name; } ;
typedef TYPE_7__ ngx_http_v2_parse_header_t ;
struct TYPE_20__ {int headers; } ;
struct TYPE_27__ {TYPE_1__ headers_in; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_28__ {int headers_in_hash; } ;
typedef TYPE_9__ ngx_http_core_main_conf_t ;
struct TYPE_19__ {scalar_t__ (* handler ) (TYPE_8__*,TYPE_5__*,int ) ;int offset; } ;


 scalar_t__ NGX_ABORT ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 TYPE_18__* ngx_hash_find (int *,int ,int ,int ) ;
 int ngx_hash_key (int ,int ) ;
 int ngx_http_core_module ;
 TYPE_9__* ngx_http_get_module_main_conf (TYPE_8__*,int ) ;
 TYPE_5__* ngx_list_push (int *) ;
 scalar_t__ stub1 (TYPE_8__*,TYPE_5__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_v2_parse_header(ngx_http_request_t *r,
    ngx_http_v2_parse_header_t *header, ngx_str_t *value)
{
    ngx_table_elt_t *h;
    ngx_http_core_main_conf_t *cmcf;

    h = ngx_list_push(&r->headers_in.headers);
    if (h == ((void*)0)) {
        return NGX_ERROR;
    }

    h->key.len = header->name.len;
    h->key.data = header->name.data;
    h->lowcase_key = header->name.data;

    if (header->hh == ((void*)0)) {
        header->hash = ngx_hash_key(header->name.data, header->name.len);

        cmcf = ngx_http_get_module_main_conf(r, ngx_http_core_module);

        header->hh = ngx_hash_find(&cmcf->headers_in_hash, header->hash,
                                   h->lowcase_key, h->key.len);
        if (header->hh == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    h->hash = header->hash;

    h->value.len = value->len;
    h->value.data = value->data;

    if (header->hh->handler(r, h, header->hh->offset) != NGX_OK) {

        return NGX_ABORT;
    }

    return NGX_OK;
}
