
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ seq; scalar_t__ ms; } ;
struct TYPE_6__ {int * cgroups; TYPE_1__ last_id; scalar_t__ length; int rax; } ;
typedef TYPE_2__ stream ;


 int raxNew () ;
 TYPE_2__* zmalloc (int) ;

stream *streamNew(void) {
    stream *s = zmalloc(sizeof(*s));
    s->rax = raxNew();
    s->length = 0;
    s->last_id.ms = 0;
    s->last_id.seq = 0;
    s->cgroups = ((void*)0);
    return s;
}
