
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {int i_ssa_styles; int i_images; struct TYPE_6__** pp_images; struct TYPE_6__* psz_filename; scalar_t__ p_pic; struct TYPE_6__** pp_ssa_styles; int p_style; struct TYPE_6__* psz_stylename; } ;
typedef TYPE_2__ decoder_sys_t ;


 int TAB_CLEAN (int,TYPE_2__**) ;
 int free (TYPE_2__*) ;
 int picture_Release (scalar_t__) ;
 int text_style_Delete (int ) ;

__attribute__((used)) static void CloseDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t *)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_sys->pp_ssa_styles )
    {
        for( int i = 0; i < p_sys->i_ssa_styles; i++ )
        {
            if( !p_sys->pp_ssa_styles[i] )
                continue;

            free( p_sys->pp_ssa_styles[i]->psz_stylename );
            text_style_Delete( p_sys->pp_ssa_styles[i]->p_style );
            free( p_sys->pp_ssa_styles[i] );
        }
        TAB_CLEAN( p_sys->i_ssa_styles, p_sys->pp_ssa_styles );
    }
    if( p_sys->pp_images )
    {
        for( int i = 0; i < p_sys->i_images; i++ )
        {
            if( !p_sys->pp_images[i] )
                continue;

            if( p_sys->pp_images[i]->p_pic )
                picture_Release( p_sys->pp_images[i]->p_pic );
            free( p_sys->pp_images[i]->psz_filename );

            free( p_sys->pp_images[i] );
        }
        TAB_CLEAN( p_sys->i_images, p_sys->pp_images );
    }

    free( p_sys );
}
