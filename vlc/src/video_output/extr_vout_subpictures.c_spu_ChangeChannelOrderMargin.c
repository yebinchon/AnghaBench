
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p; } ;
typedef TYPE_1__ spu_t ;
struct TYPE_5__ {int margin; int secondary_margin; int lock; } ;
typedef TYPE_2__ spu_private_t ;
typedef enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;




 int vlc_assert_unreachable () ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void spu_ChangeChannelOrderMargin(spu_t *spu, enum vlc_vout_order order,
                                  int margin)
{
    spu_private_t *sys = spu->p;

    vlc_mutex_lock(&sys->lock);
    switch (order)
    {
        case 129:
            sys->margin = margin;
            break;
        case 128:
            sys->secondary_margin = margin;
            break;
        default:
            vlc_assert_unreachable();
    }
    vlc_mutex_unlock(&sys->lock);
}
