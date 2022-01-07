
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* p; } ;
typedef TYPE_5__ vout_thread_t ;
typedef int picture_t ;
struct TYPE_12__ {int video; } ;
struct TYPE_9__ {TYPE_5__* sys; } ;
struct TYPE_14__ {TYPE_4__ fmt_out; TYPE_1__ owner; } ;
typedef TYPE_6__ filter_t ;
struct TYPE_10__ {int chain_interactive; int lock; } ;
struct TYPE_11__ {TYPE_2__ filter; } ;


 int * VoutVideoFilterInteractiveNewPicture (TYPE_6__*) ;
 scalar_t__ filter_chain_IsEmpty (int ) ;
 int * picture_NewFromFormat (int *) ;
 int vlc_mutex_assert (int *) ;

__attribute__((used)) static picture_t *VoutVideoFilterStaticNewPicture(filter_t *filter)
{
    vout_thread_t *vout = filter->owner.sys;

    vlc_mutex_assert(&vout->p->filter.lock);
    if (filter_chain_IsEmpty(vout->p->filter.chain_interactive))


        return VoutVideoFilterInteractiveNewPicture(filter);

    return picture_NewFromFormat(&filter->fmt_out.video);
}
