
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int subpicture_t ;
struct TYPE_4__ {int p_dec; int i_clock; } ;
typedef TYPE_1__ cea708_t ;


 int * CEA708_BuildSubtitle (TYPE_1__*) ;
 int Debug (int ) ;
 int MS_FROM_VLC_TICK (int ) ;
 int decoder_QueueSub (int ,int *) ;
 int printf (char*,int ) ;

__attribute__((used)) static void CEA708_Output( cea708_t *p_cea708 )
{
    Debug(printf("@%ld ms\n", MS_FROM_VLC_TICK(p_cea708->i_clock)));
    subpicture_t *p_spu = CEA708_BuildSubtitle( p_cea708 );
    if( p_spu )
        decoder_QueueSub( p_cea708->p_dec, p_spu );
}
