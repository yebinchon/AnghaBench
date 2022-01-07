
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int es_out_t ;


 int ES_OUT_GET_BUFFERING ;
 int assert (int) ;
 int es_out_Control (int *,int ,int*) ;

__attribute__((used)) static inline bool es_out_GetBuffering( es_out_t *p_out )
{
    bool b;
    int i_ret = es_out_Control( p_out, ES_OUT_GET_BUFFERING, &b );

    assert( !i_ret );
    return b;
}
