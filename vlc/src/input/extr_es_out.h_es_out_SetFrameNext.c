
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int es_out_t ;


 int ES_OUT_SET_FRAME_NEXT ;
 int es_out_Control (int *,int ) ;

__attribute__((used)) static inline int es_out_SetFrameNext( es_out_t *p_out )
{
    return es_out_Control( p_out, ES_OUT_SET_FRAME_NEXT );
}
