
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
typedef int vlc_spu_highlight_t ;
struct TYPE_4__ {scalar_t__ spu; int dummy; } ;


 int assert (int) ;
 int spu_SetHighlight (scalar_t__,int const*) ;

void vout_SetSpuHighlight( vout_thread_t *vout,
                        const vlc_spu_highlight_t *spu_hl )
{
    assert(!vout->p->dummy);
    if (vout->p->spu)
        spu_SetHighlight(vout->p->spu, spu_hl);
}
