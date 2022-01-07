
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int * p_end; int * p; int * p_start; } ;
typedef TYPE_1__ bs_t ;



__attribute__((used)) static size_t bs_skipeven_bytes_forward( bs_t *s, size_t i_count )
{
    if( s->p == ((void*)0) )
    {
        s->p = s->p_start;
        return 1 + bs_skipeven_bytes_forward( s, i_count - 1 );
    }

    if( s->p_end - s->p > (ssize_t) i_count * 2 )
    {
        s->p += i_count * 2;
        return i_count;
    }
    else
    {
        s->p = s->p_end;
        return 0;
    }
}
