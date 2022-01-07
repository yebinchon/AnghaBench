
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;
typedef int AVDictionary ;


 int free (char*) ;
 char* var_InheritString (int *,char*) ;
 int vlc_av_get_options (char*,int **) ;

__attribute__((used)) static AVDictionary * BuildAVOptions( demux_t *p_demux )
{
    char *psz_opts = var_InheritString( p_demux, "avformat-options" );
    AVDictionary *options = ((void*)0);
    if( psz_opts )
    {
        vlc_av_get_options( psz_opts, &options );
        free( psz_opts );
    }
    return options;
}
