
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_meta_type_t ;
typedef int vlc_meta_t ;
typedef int uint8_t ;


 char* ID3TextConvert (int const*,size_t,char**) ;
 int free (char*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int vlc_meta_AddExtra (int *,char const*,char const*) ;
 char* vlc_meta_Get (int *,int ) ;
 char* vlc_meta_GetExtra (int *,char const*) ;
 int vlc_meta_Set (int *,int ,char const*) ;

__attribute__((used)) static bool ID3TextTagHandler( const uint8_t *p_buf, size_t i_buf,
                               vlc_meta_type_t type, const char *psz_extra,
                               vlc_meta_t *p_meta, bool *pb_updated )
{
    if( p_meta == ((void*)0) )
        return 0;

    char *p_alloc;
    const char *psz = ID3TextConvert( p_buf, i_buf, &p_alloc );
    if( psz && *psz )
    {
        const char *psz_old = ( psz_extra ) ? vlc_meta_GetExtra( p_meta, psz_extra ):
                                              vlc_meta_Get( p_meta, type );
        if( !psz_old || strcmp( psz_old, psz ) )
        {
            if( pb_updated )
                *pb_updated = 1;
            if( psz_extra )
                vlc_meta_AddExtra( p_meta, psz_extra, psz );
            else
                vlc_meta_Set( p_meta, type, psz );
        }
    }
    free( p_alloc );

    return (psz != ((void*)0));
}
