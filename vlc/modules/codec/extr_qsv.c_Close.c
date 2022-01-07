
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ encoder_t ;
struct TYPE_5__ {scalar_t__ input_pool; int packets; int session; } ;
typedef TYPE_2__ encoder_sys_t ;


 int MFXClose (int ) ;
 int MFXVideoENCODE_Close (int ) ;
 int async_task_t_fifo_Release (int *) ;
 int free (TYPE_2__*) ;
 int picture_pool_Release (scalar_t__) ;

__attribute__((used)) static void Close(vlc_object_t *this)
{
    encoder_t *enc = (encoder_t *)this;
    encoder_sys_t *sys = enc->p_sys;

    MFXVideoENCODE_Close(sys->session);
    MFXClose(sys->session);


    async_task_t_fifo_Release(&sys->packets);
    if (sys->input_pool)
        picture_pool_Release(sys->input_pool);
    free(sys);
}
