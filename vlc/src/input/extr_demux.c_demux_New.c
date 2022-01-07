
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int stream_t ;
typedef int es_out_t ;
typedef int demux_t ;


 int assert (int ) ;
 int * demux_NewAdvanced (int *,int *,char const*,char*,int *,int *,int) ;

demux_t *demux_New( vlc_object_t *p_obj, const char *psz_name,
                    stream_t *s, es_out_t *out )
{
    assert(s != ((void*)0) );
    return demux_NewAdvanced( p_obj, ((void*)0), psz_name, "", s, out, 0 );
}
