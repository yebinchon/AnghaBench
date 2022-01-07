
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct test_es_out_t {int parent; TYPE_1__* ids; } ;
typedef int es_out_t ;
struct TYPE_7__ {int fmt; int * decoder; struct TYPE_7__* next; } ;
typedef TYPE_1__ es_out_id_t ;
struct TYPE_8__ {scalar_t__ i_group; } ;
typedef TYPE_2__ es_format_t ;


 int debug (char*,void*) ;
 int es_format_Clean (int *) ;
 int es_format_Copy (int *,TYPE_2__ const*) ;
 TYPE_1__* malloc (int) ;
 int * test_decoder_create (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static es_out_id_t *EsOutAdd(es_out_t *out, const es_format_t *fmt)
{
    struct test_es_out_t *ctx = (struct test_es_out_t *) out;

    if (fmt->i_group < 0)
        return ((void*)0);

    es_out_id_t *id = malloc(sizeof (*id));
    if (unlikely(id == ((void*)0)))
        return ((void*)0);

    id->next = ctx->ids;
    ctx->ids = id;







    debug("[%p] Added   ES\n", (void *)id);
    return id;
}
