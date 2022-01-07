
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {int date; } ;
typedef TYPE_2__ decoder_sys_t ;


 int FlushBuffer (TYPE_2__*,int ) ;
 int SIZE_MAX ;
 int VLC_TICK_INVALID ;
 int date_Set (int *,int ) ;

__attribute__((used)) static void Flush( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    date_Set( &p_sys->date, VLC_TICK_INVALID );
    FlushBuffer( p_sys, SIZE_MAX );
}
