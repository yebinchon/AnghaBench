
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int * cbs; } ;
struct test_es_out_t {int * parent; TYPE_1__ out; int * ids; } ;
typedef TYPE_1__ es_out_t ;


 int es_out_cbs ;
 int fprintf (int ,char*) ;
 struct test_es_out_t* malloc (int) ;
 int stderr ;

__attribute__((used)) static es_out_t *test_es_out_create(vlc_object_t *parent)
{
    struct test_es_out_t *ctx = malloc(sizeof (*ctx));
    if (ctx == ((void*)0))
    {
        fprintf(stderr, "Error: cannot create ES output.\n");
        return ((void*)0);
    }

    ctx->ids = ((void*)0);

    es_out_t *out = &ctx->out;
    out->cbs = &es_out_cbs;



    (void) parent;

    return out;
}
