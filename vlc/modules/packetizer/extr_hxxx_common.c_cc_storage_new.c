
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int next; int current; scalar_t__ i_flags; void* i_dts; void* i_pts; } ;
typedef TYPE_1__ cc_storage_t ;


 void* VLC_TICK_INVALID ;
 int cc_Init (int *) ;
 scalar_t__ likely (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

cc_storage_t * cc_storage_new( void )
{
    cc_storage_t *p_ccs = malloc( sizeof(*p_ccs) );
    if( likely(p_ccs) )
    {
        p_ccs->i_pts = VLC_TICK_INVALID;
        p_ccs->i_dts = VLC_TICK_INVALID;
        p_ccs->i_flags = 0;
        cc_Init( &p_ccs->current );
        cc_Init( &p_ccs->next );
    }
    return p_ccs;
}
