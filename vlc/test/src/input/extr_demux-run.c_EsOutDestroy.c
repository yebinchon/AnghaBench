
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct test_es_out_t {TYPE_1__* ids; } ;
typedef int es_out_t ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ es_out_id_t ;


 int IdDelete (TYPE_1__*) ;
 int free (struct test_es_out_t*) ;

__attribute__((used)) static void EsOutDestroy(es_out_t *out)
{
    struct test_es_out_t *ctx = (struct test_es_out_t *)out;
    es_out_id_t *id;

    while ((id = ctx->ids) != ((void*)0))
    {
        ctx->ids = id->next;
        IdDelete(id);
    }
    free(ctx);
}
