
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct test_es_out_t {TYPE_1__* ids; } ;
typedef int es_out_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ es_out_id_t ;


 int IdDelete (TYPE_1__*) ;
 int abort () ;
 int debug (char*,void*) ;

__attribute__((used)) static void EsOutDelete(es_out_t *out, es_out_id_t *id)
{
    struct test_es_out_t *ctx = (struct test_es_out_t *) out;
    es_out_id_t **pp = &ctx->ids;

    while (*pp != id)
    {
        if (*pp == ((void*)0))
            abort();
        pp = &((*pp)->next);
    }

    debug("[%p] Deleted ES\n", (void *)id);
    *pp = id->next;
    IdDelete(id);
}
