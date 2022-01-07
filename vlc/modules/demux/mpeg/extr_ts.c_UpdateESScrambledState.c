
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* p_extraes; scalar_t__ id; struct TYPE_3__* p_next; } ;
typedef TYPE_1__ ts_es_t ;
typedef int es_out_t ;


 int ES_OUT_SET_ES_SCRAMBLED_STATE ;
 int es_out_Control (int *,int ,scalar_t__,int) ;

__attribute__((used)) static inline void UpdateESScrambledState( es_out_t *out, const ts_es_t *p_es, bool b_scrambled )
{
    for( ; p_es; p_es = p_es->p_next )
    {
        if( p_es->id )
            es_out_Control( out, ES_OUT_SET_ES_SCRAMBLED_STATE,
                            p_es->id, b_scrambled );
        UpdateESScrambledState( out, p_es->p_extraes, b_scrambled );
    }
}
