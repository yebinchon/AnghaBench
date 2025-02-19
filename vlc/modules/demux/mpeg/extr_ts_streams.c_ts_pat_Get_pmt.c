
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_11__ {scalar_t__ i_number; } ;
typedef TYPE_4__ ts_pmt_t ;
struct TYPE_10__ {int i_size; TYPE_2__** p_elems; } ;
struct TYPE_12__ {TYPE_3__ programs; } ;
typedef TYPE_5__ ts_pat_t ;
struct TYPE_8__ {TYPE_4__* p_pmt; } ;
struct TYPE_9__ {TYPE_1__ u; } ;



ts_pmt_t *ts_pat_Get_pmt( ts_pat_t *pat, uint16_t i_number )
{
    ts_pmt_t *p_pmt = ((void*)0);
    for( int i=0; i<pat->programs.i_size; i++ )
    {
        p_pmt = pat->programs.p_elems[i]->u.p_pmt;
        if( p_pmt->i_number == i_number )
            break;
    }
    return p_pmt;
}
