
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ p; scalar_t__ p_end; int p_start; } ;
typedef TYPE_1__ bs_t ;



__attribute__((used)) static size_t bs_skipeven_bytes_pos( const bs_t *s )
{
    if( s->p )
        return s->p + 1 < s->p_end ? (s->p - s->p_start) / 2 + 1 : (s->p - s->p_start) / 2;
    else
        return 0;
}
