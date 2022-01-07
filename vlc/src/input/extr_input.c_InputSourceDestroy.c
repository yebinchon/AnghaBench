
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_title; int * title; scalar_t__ p_demux; } ;
typedef TYPE_1__ input_source_t ;


 int TAB_CLEAN (int,int *) ;
 int demux_Delete (scalar_t__) ;
 int free (TYPE_1__*) ;
 int vlc_input_title_Delete (int ) ;

__attribute__((used)) static void InputSourceDestroy( input_source_t *in )
{
    int i;

    if( in->p_demux )
        demux_Delete( in->p_demux );

    if( in->i_title > 0 )
    {
        for( i = 0; i < in->i_title; i++ )
            vlc_input_title_Delete( in->title[i] );
        TAB_CLEAN( in->i_title, in->title );
    }

    free( in );
}
