
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_configured; int b_seen; int fmt; void* i_last_pts; void* i_first_pts; int * es; scalar_t__ i_next_block_flags; scalar_t__ i_id; scalar_t__ i_skip; } ;
typedef TYPE_1__ ps_track_t ;


 int PS_TK_COUNT ;
 int UNKNOWN_ES ;
 void* VLC_TICK_INVALID ;
 int es_format_Init (int *,int ,int ) ;

__attribute__((used)) static inline void ps_track_init( ps_track_t tk[PS_TK_COUNT] )
{
    int i;
    for( i = 0; i < PS_TK_COUNT; i++ )
    {
        tk[i].b_configured = 0;
        tk[i].b_seen = 0;
        tk[i].i_skip = 0;
        tk[i].i_id = 0;
        tk[i].i_next_block_flags = 0;
        tk[i].es = ((void*)0);
        tk[i].i_first_pts = VLC_TICK_INVALID;
        tk[i].i_last_pts = VLC_TICK_INVALID;
        es_format_Init( &tk[i].fmt, UNKNOWN_ES, 0 );
    }
}
