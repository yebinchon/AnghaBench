
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int i_codec; } ;
struct TYPE_6__ {int * p_dec; TYPE_3__ fmt; TYPE_1__* p_master; } ;
typedef TYPE_2__ es_out_id_t ;
struct TYPE_5__ {scalar_t__ p_dec; } ;


 int EsOutGetClosedCaptionsChannel (TYPE_3__*) ;
 int input_DecoderGetCcState (scalar_t__,int ,int,int*) ;

__attribute__((used)) static bool EsIsSelected( es_out_id_t *es )
{
    if( es->p_master )
    {
        bool b_decode = 0;
        if( es->p_master->p_dec )
        {
            int i_channel = EsOutGetClosedCaptionsChannel( &es->fmt );
            input_DecoderGetCcState( es->p_master->p_dec, es->fmt.i_codec,
                                     i_channel, &b_decode );
        }
        return b_decode;
    }
    else
    {
        return es->p_dec != ((void*)0);
    }
}
