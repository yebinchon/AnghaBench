
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int libvlc_media_player_t ;


 int * GetVout (int *,int ) ;
 int free (char*) ;
 int libvlc_printerr (char*,char const*) ;
 char* strstr (char*,char const*) ;
 char* var_GetString (int *,char*) ;
 int vout_Release (int *) ;

__attribute__((used)) static bool find_sub_source_by_name( libvlc_media_player_t *p_mi, const char *restrict name )
{
    vout_thread_t *vout = GetVout( p_mi, 0 );
    if (!vout)
        return 0;

    char *psz_sources = var_GetString( vout, "sub-source" );
    if( !psz_sources )
    {
        libvlc_printerr( "%s not enabled", name );
        vout_Release(vout);
        return 0;
    }


    char *p = strstr( psz_sources, name );
    free( psz_sources );
    vout_Release(vout);
    return (p != ((void*)0));
}
