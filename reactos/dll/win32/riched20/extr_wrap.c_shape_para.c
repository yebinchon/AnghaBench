
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* para; } ;
struct TYPE_9__ {TYPE_5__* next_para; } ;
struct TYPE_10__ {TYPE_4__ run; TYPE_2__ para; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_3__ member; struct TYPE_12__* next; } ;
struct TYPE_8__ {int nFlags; } ;
typedef TYPE_4__ ME_Run ;
typedef TYPE_5__ ME_DisplayItem ;
typedef int ME_Context ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int MEPF_COMPLEX ;
 scalar_t__ diRun ;
 int shape_run (int *,TYPE_4__*) ;

__attribute__((used)) static HRESULT shape_para( ME_Context *c, ME_DisplayItem *p )
{
    ME_DisplayItem *di;
    ME_Run *run;
    HRESULT hr;

    for (di = p->next; di != p->member.para.next_para; di = di->next)
    {
        if (di->type != diRun) continue;
        run = &di->member.run;

        hr = shape_run( c, run );
        if (FAILED( hr ))
        {
            run->para->nFlags &= ~MEPF_COMPLEX;
            return hr;
        }
    }
    return hr;
}
