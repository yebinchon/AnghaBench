
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_4__ {int * spu; int dummy; } ;


 int assert (int) ;
 scalar_t__ likely (int ) ;
 int spu_ChangeFilters (int *,char const*) ;

void vout_ControlChangeSubFilters(vout_thread_t *vout, const char *filters)
{
    assert(!vout->p->dummy);
    if (likely(vout->p->spu != ((void*)0)))
        spu_ChangeFilters(vout->p->spu, filters);
}
