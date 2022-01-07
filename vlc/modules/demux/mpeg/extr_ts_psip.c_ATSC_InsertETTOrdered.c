
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int i_size; TYPE_2__** p_elems; } ;
struct TYPE_8__ {TYPE_6__ etts; } ;
typedef TYPE_1__ ts_psip_context_t ;
struct TYPE_9__ {scalar_t__ i_etm_id; } ;
typedef TYPE_2__ dvbpsi_atsc_ett_t ;


 int ARRAY_INSERT (TYPE_6__,TYPE_2__*,int) ;
 int dvbpsi_atsc_DeleteETT (TYPE_2__*) ;

__attribute__((used)) static void ATSC_InsertETTOrdered( ts_psip_context_t *p_ctx, dvbpsi_atsc_ett_t *p_ett )
{
    int i=0;
    for( ; i<p_ctx->etts.i_size; i++ )
    {
        dvbpsi_atsc_ett_t *p = p_ctx->etts.p_elems[i];
        if( p->i_etm_id >= p_ett->i_etm_id )
        {
            if( p->i_etm_id == p_ett->i_etm_id )
            {
                dvbpsi_atsc_DeleteETT( p );
                p_ctx->etts.p_elems[i] = p_ett;
                return;
            }
            break;
        }
    }
    ARRAY_INSERT( p_ctx->etts, p_ett, i );
}
