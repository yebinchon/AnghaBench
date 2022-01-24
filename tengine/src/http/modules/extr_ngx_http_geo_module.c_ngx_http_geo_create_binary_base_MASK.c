#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int ngx_uint_t ;
struct TYPE_22__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ ngx_str_t ;
struct TYPE_23__ {int /*<<< orphan*/ * data; scalar_t__ len; } ;
typedef  TYPE_4__ ngx_http_variable_value_t ;
struct TYPE_24__ {scalar_t__ offset; } ;
typedef  TYPE_5__ ngx_http_geo_variable_value_node_t ;
struct TYPE_25__ {TYPE_4__* value; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  TYPE_6__ ngx_http_geo_range_t ;
struct TYPE_26__ {void* crc32; } ;
typedef  TYPE_7__ ngx_http_geo_header_t ;
struct TYPE_18__ {int /*<<< orphan*/  sentinel; int /*<<< orphan*/  root; } ;
struct TYPE_21__ {TYPE_6__** low; } ;
struct TYPE_19__ {scalar_t__ len; } ;
struct TYPE_27__ {TYPE_10__ rbtree; TYPE_2__ high; TYPE_1__* pool; scalar_t__ data_size; TYPE_12__ include_name; int /*<<< orphan*/  temp_pool; } ;
typedef  TYPE_8__ ngx_http_geo_conf_ctx_t ;
struct TYPE_28__ {scalar_t__ size; TYPE_7__* addr; int /*<<< orphan*/ * name; int /*<<< orphan*/  log; } ;
typedef  TYPE_9__ ngx_file_mapping_t ;
struct TYPE_20__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_NOTICE ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_7__*,int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_geo_header ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,TYPE_12__*) ; 
 scalar_t__ FUNC8 (TYPE_10__*,TYPE_3__*,void*) ; 

__attribute__((used)) static void
FUNC9(ngx_http_geo_conf_ctx_t *ctx)
{
    u_char                              *p;
    uint32_t                             hash;
    ngx_str_t                            s;
    ngx_uint_t                           i;
    ngx_file_mapping_t                   fm;
    ngx_http_geo_range_t                *r, *range, **ranges;
    ngx_http_geo_header_t               *header;
    ngx_http_geo_variable_value_node_t  *gvvn;

    fm.name = FUNC6(ctx->temp_pool, ctx->include_name.len + 5);
    if (fm.name == NULL) {
        return;
    }

    FUNC7(fm.name, "%V.bin%Z", &ctx->include_name);

    fm.size = ctx->data_size;
    fm.log = ctx->pool->log;

    FUNC5(NGX_LOG_NOTICE, fm.log, 0,
                  "creating binary geo range base \"%s\"", fm.name);

    if (FUNC3(&fm) != NGX_OK) {
        return;
    }

    p = FUNC1(fm.addr, &ngx_http_geo_header,
                   sizeof(ngx_http_geo_header_t));

    p = FUNC4(fm.addr, p, ctx->rbtree.root,
                                 ctx->rbtree.sentinel);

    p += sizeof(ngx_http_variable_value_t);

    ranges = (ngx_http_geo_range_t **) p;

    p += 0x10000 * sizeof(ngx_http_geo_range_t *);

    for (i = 0; i < 0x10000; i++) {
        r = ctx->high.low[i];
        if (r == NULL) {
            continue;
        }

        range = (ngx_http_geo_range_t *) p;
        ranges[i] = (ngx_http_geo_range_t *) (p - (u_char *) fm.addr);

        do {
            s.len = r->value->len;
            s.data = r->value->data;
            hash = FUNC2(s.data, s.len);
            gvvn = (ngx_http_geo_variable_value_node_t *)
                        FUNC8(&ctx->rbtree, &s, hash);

            range->value = (ngx_http_variable_value_t *) gvvn->offset;
            range->start = r->start;
            range->end = r->end;
            range++;

        } while ((++r)->value);

        range->value = NULL;

        p = (u_char *) range + sizeof(void *);
    }

    header = fm.addr;
    header->crc32 = FUNC2((u_char *) fm.addr
                                       + sizeof(ngx_http_geo_header_t),
                                   fm.size - sizeof(ngx_http_geo_header_t));

    FUNC0(&fm);
}