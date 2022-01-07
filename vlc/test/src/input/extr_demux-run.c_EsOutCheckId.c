
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct test_es_out_t {TYPE_1__* ids; } ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ es_out_id_t ;


 int abort () ;

__attribute__((used)) static void EsOutCheckId(struct test_es_out_t *ctx, es_out_id_t *id)
{
    for (es_out_id_t *ids = ctx->ids; ids != ((void*)0); ids = ids->next)
        if (ids == id)
            return;

    abort();
}
