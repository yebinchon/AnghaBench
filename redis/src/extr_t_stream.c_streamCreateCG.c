
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int streamID ;
struct TYPE_7__ {int last_id; void* consumers; void* pel; } ;
typedef TYPE_1__ streamCG ;
struct TYPE_8__ {int * cgroups; } ;
typedef TYPE_2__ stream ;


 scalar_t__ raxFind (int *,unsigned char*,size_t) ;
 int raxInsert (int *,unsigned char*,size_t,TYPE_1__*,int *) ;
 void* raxNew () ;
 scalar_t__ raxNotFound ;
 TYPE_1__* zmalloc (int) ;

streamCG *streamCreateCG(stream *s, char *name, size_t namelen, streamID *id) {
    if (s->cgroups == ((void*)0)) s->cgroups = raxNew();
    if (raxFind(s->cgroups,(unsigned char*)name,namelen) != raxNotFound)
        return ((void*)0);

    streamCG *cg = zmalloc(sizeof(*cg));
    cg->pel = raxNew();
    cg->consumers = raxNew();
    cg->last_id = *id;
    raxInsert(s->cgroups,(unsigned char*)name,namelen,cg,((void*)0));
    return cg;
}
