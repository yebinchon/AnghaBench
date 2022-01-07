
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {int hfaad; } ;
typedef TYPE_2__ decoder_sys_t ;


 int FlushBuffer (TYPE_2__*,int ) ;
 int NeAACDecClose (int ) ;
 int SIZE_MAX ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t *)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;

    NeAACDecClose( p_sys->hfaad );
    FlushBuffer( p_sys, SIZE_MAX );
    free( p_sys );
}
