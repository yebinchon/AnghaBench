
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fmt; scalar_t__ p_module; } ;
typedef TYPE_1__ video_splitter_t ;


 int module_unneed (TYPE_1__*,scalar_t__) ;
 int video_format_Clean (int *) ;
 int vlc_object_delete (TYPE_1__*) ;

void video_splitter_Delete( video_splitter_t *p_splitter )
{
    if( p_splitter->p_module )
        module_unneed( p_splitter, p_splitter->p_module );

    video_format_Clean( &p_splitter->fmt );
    vlc_object_delete(p_splitter);
}
