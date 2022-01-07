
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
typedef enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;
struct TYPE_4__ {int * spu; int dummy; } ;


 int assert (int) ;
 scalar_t__ likely (int ) ;
 int spu_ChangeChannelOrderMargin (int *,int,int) ;

void vout_ChangeSpuChannelMargin(vout_thread_t *vout,
                                 enum vlc_vout_order order, int margin)
{
    assert(!vout->p->dummy);
    if (likely(vout->p->spu != ((void*)0)))
        spu_ChangeChannelOrderMargin(vout->p->spu, order, margin);
}
