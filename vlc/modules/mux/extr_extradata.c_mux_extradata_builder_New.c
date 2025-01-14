
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct mux_extradata_builder_cb {scalar_t__ (* pf_init ) (TYPE_1__*) ;} ;
struct TYPE_8__ {struct mux_extradata_builder_cb cb; scalar_t__ fcc; } ;
typedef TYPE_1__ mux_extradata_builder_t ;
typedef enum mux_extradata_type_e { ____Placeholder_mux_extradata_type_e } mux_extradata_type_e ;
struct TYPE_9__ {int type; scalar_t__ fcc; struct mux_extradata_builder_cb* cb; } ;


 size_t ARRAY_SIZE (TYPE_4__*) ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 TYPE_4__* mappings ;
 scalar_t__ stub1 (TYPE_1__*) ;

mux_extradata_builder_t * mux_extradata_builder_New(vlc_fourcc_t fcc,
                                                    enum mux_extradata_type_e type)
{
    const struct mux_extradata_builder_cb *cb = ((void*)0);
    for(size_t i=0; i<ARRAY_SIZE(mappings); i++)
    {
        if(mappings[i].type != type || mappings[i].fcc != fcc)
            continue;
        cb = mappings[i].cb;
        break;
    }

    if(cb == ((void*)0))
        return ((void*)0);

    mux_extradata_builder_t *m = calloc(1, sizeof(*m));
    if(m)
    {
        m->fcc = fcc;
        m->cb = *cb;
        if(m->cb.pf_init && m->cb.pf_init(m) != 0)
        {
            free(m);
            m = ((void*)0);
        }
    }
    return m;
}
