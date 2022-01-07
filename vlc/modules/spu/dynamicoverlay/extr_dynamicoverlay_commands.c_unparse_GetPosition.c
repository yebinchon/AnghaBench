
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_y; int i_x; } ;
typedef TYPE_1__ commandparams_t ;
typedef int buffer_t ;


 int BufferPrintf (int *,char*,int ) ;
 int VLC_SUCCESS ;

__attribute__((used)) static int unparse_GetPosition( const commandparams_t *p_results,
                                buffer_t *p_output )
{
    int ret = BufferPrintf( p_output, " %d", p_results->i_x );
    if( ret != VLC_SUCCESS )
        return ret;

    ret = BufferPrintf( p_output, " %d", p_results->i_y );
    if( ret != VLC_SUCCESS )
        return ret;

    return VLC_SUCCESS;
}
