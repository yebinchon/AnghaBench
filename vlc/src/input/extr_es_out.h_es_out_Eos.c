
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int es_out_t ;


 int ES_OUT_SET_EOS ;
 int assert (int) ;
 int es_out_Control (int *,int ) ;

__attribute__((used)) static inline void es_out_Eos( es_out_t *p_out )
{
    int i_ret = es_out_Control( p_out, ES_OUT_SET_EOS );
    assert( !i_ret );
}
