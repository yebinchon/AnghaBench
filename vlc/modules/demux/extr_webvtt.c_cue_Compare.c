
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i_start; scalar_t__ i_stop; } ;
typedef TYPE_1__ webvtt_cue_t ;



__attribute__((used)) static int cue_Compare( const void *a_, const void *b_ )
{
    webvtt_cue_t *a = (webvtt_cue_t *)a_;
    webvtt_cue_t *b = (webvtt_cue_t *)b_;
    if( a->i_start == b->i_start )
    {
        if( a->i_stop > b->i_stop )
            return -1;
        else
            return ( a->i_stop < b->i_stop ) ? 1 : 0;
    }
    else return a->i_start < b->i_start ? -1 : 1;
}
