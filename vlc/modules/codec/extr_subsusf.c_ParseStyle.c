
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int psz_stylename; } ;
typedef TYPE_1__ ssa_style_t ;
struct TYPE_6__ {int i_ssa_styles; TYPE_1__** pp_ssa_styles; } ;
typedef TYPE_2__ decoder_sys_t ;


 char* GrabAttributeValue (char*,char*) ;
 int free (char*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static ssa_style_t *ParseStyle( decoder_sys_t *p_sys, char *psz_subtitle )
{
    ssa_style_t *p_ssa_style = ((void*)0);
    char *psz_style = GrabAttributeValue( "style", psz_subtitle );

    if( psz_style )
    {
        for( int i = 0; i < p_sys->i_ssa_styles; i++ )
        {
            if( !strcmp( p_sys->pp_ssa_styles[i]->psz_stylename, psz_style ) )
                p_ssa_style = p_sys->pp_ssa_styles[i];
        }
        free( psz_style );
    }
    return p_ssa_style;
}
