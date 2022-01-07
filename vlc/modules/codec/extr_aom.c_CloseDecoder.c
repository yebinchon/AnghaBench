
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {int ctx; } ;
typedef TYPE_2__ decoder_sys_t ;


 int FlushDecoder (TYPE_1__*) ;
 int destroy_context (int *,int *) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void CloseDecoder(vlc_object_t *p_this)
{
    decoder_t *dec = (decoder_t *)p_this;
    decoder_sys_t *sys = dec->p_sys;


    FlushDecoder(dec);

    destroy_context(p_this, &sys->ctx);

    free(sys);
}
