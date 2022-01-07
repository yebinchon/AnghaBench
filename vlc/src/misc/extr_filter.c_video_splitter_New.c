
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int p_module; int fmt; } ;
typedef TYPE_1__ video_splitter_t ;
typedef int video_format_t ;


 int module_need (TYPE_1__*,char*,char const*,int) ;
 int video_format_Copy (int *,int const*) ;
 int video_splitter_Delete (TYPE_1__*) ;
 TYPE_1__* vlc_custom_create (int *,int,char*) ;

video_splitter_t *video_splitter_New( vlc_object_t *p_this,
                                      const char *psz_name,
                                      const video_format_t *p_fmt )
{
    video_splitter_t *p_splitter = vlc_custom_create( p_this,
                                       sizeof(*p_splitter), "video splitter" );
    if( !p_splitter )
        return ((void*)0);

    video_format_Copy( &p_splitter->fmt, p_fmt );


    p_splitter->p_module = module_need( p_splitter, "video splitter", psz_name, 1 );
    if( ! p_splitter->p_module )
    {
        video_splitter_Delete( p_splitter );
        return ((void*)0);
    }

    return p_splitter;
}
