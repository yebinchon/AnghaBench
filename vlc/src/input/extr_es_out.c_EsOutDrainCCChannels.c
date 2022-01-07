
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int i_bitmap; TYPE_2__** pp_es; } ;
struct TYPE_7__ {TYPE_1__ cc; } ;
typedef TYPE_3__ es_out_id_t ;
struct TYPE_6__ {int p_dec; } ;


 int input_DecoderDrain (int ) ;

__attribute__((used)) static void EsOutDrainCCChannels( es_out_id_t *parent )
{

    uint64_t i_bitmap = parent->cc.i_bitmap;
    for( int i = 0; i_bitmap > 0; i++, i_bitmap >>= 1 )
    {
        if( (i_bitmap & 1) == 0 || !parent->cc.pp_es[i] ||
            !parent->cc.pp_es[i]->p_dec )
            continue;
        input_DecoderDrain( parent->cc.pp_es[i]->p_dec );
    }
}
