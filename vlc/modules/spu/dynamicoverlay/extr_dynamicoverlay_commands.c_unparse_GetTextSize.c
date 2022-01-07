
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_font_size; } ;
struct TYPE_5__ {TYPE_1__ fontstyle; } ;
typedef TYPE_2__ commandparams_t ;
typedef int buffer_t ;


 int BufferPrintf (int *,char*,int ) ;
 int VLC_SUCCESS ;

__attribute__((used)) static int unparse_GetTextSize( const commandparams_t *p_results,
                                buffer_t *p_output )
{
    int ret = BufferPrintf( p_output, " %d", p_results->fontstyle.i_font_size );
    if( ret != VLC_SUCCESS )
        return ret;

    return VLC_SUCCESS;
}
