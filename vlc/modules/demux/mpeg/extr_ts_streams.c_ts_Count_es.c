
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ts_pmt_t ;
struct TYPE_3__ {struct TYPE_3__* p_extraes; int const* p_program; int id; struct TYPE_3__* p_next; } ;
typedef TYPE_1__ ts_es_t ;



size_t ts_Count_es( const ts_es_t *p_es, bool b_active, const ts_pmt_t *p_pmt )
{
    size_t i=0;
    for( ; p_es; p_es = p_es->p_next )
    {
        i += ( b_active ) ? !!p_es->id : ( ( !p_pmt || p_pmt == p_es->p_program ) ? 1 : 0 );
        i += ts_Count_es( p_es->p_extraes, b_active, p_pmt );
    }
    return i;
}
