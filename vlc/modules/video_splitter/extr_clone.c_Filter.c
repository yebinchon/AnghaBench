
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_output; } ;
typedef TYPE_1__ video_splitter_t ;
typedef int picture_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int picture_Copy (int *,int *) ;
 int picture_Release (int *) ;
 scalar_t__ video_splitter_NewPicture (TYPE_1__*,int **) ;

__attribute__((used)) static int Filter( video_splitter_t *p_splitter,
                   picture_t *pp_dst[], picture_t *p_src )
{
    if( video_splitter_NewPicture( p_splitter, pp_dst ) )
    {
        picture_Release( p_src );
        return VLC_EGENERIC;
    }

    for( int i = 0; i < p_splitter->i_output; i++ )
        picture_Copy( pp_dst[i], p_src );

    picture_Release( p_src );
    return VLC_SUCCESS;
}
