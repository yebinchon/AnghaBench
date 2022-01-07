
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int i_output; TYPE_2__* p_output; } ;
typedef TYPE_1__ video_splitter_t ;
struct TYPE_5__ {int fmt; struct TYPE_5__* psz_module; } ;
typedef TYPE_2__ video_splitter_output_t ;


 int free (TYPE_2__*) ;
 int video_format_Clean (int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    video_splitter_t *p_splitter = (video_splitter_t*)p_this;

    for( int i = 0; i < p_splitter->i_output; i++ )
    {
        video_splitter_output_t *p_cfg = &p_splitter->p_output[i];

        free( p_cfg->psz_module );
        video_format_Clean( &p_cfg->fmt );
    }
    free( p_splitter->p_output );
}
