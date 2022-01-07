
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_meta_type_t ;
typedef int vlc_meta_t ;
typedef int MP4_Box_t ;


 int AppleNameToMeta (char const*,int const**,char const**) ;
 int AtomXA9ToMeta (int,int const**,char const**) ;
 char* ExtractString (int *) ;
 int free (char*) ;
 int vlc_meta_AddExtra (int *,char const*,char*) ;
 int vlc_meta_Set (int *,int const,char*) ;

__attribute__((used)) static bool SetMeta( vlc_meta_t* p_meta, int i_type, char const* name, MP4_Box_t* p_box )
{
    vlc_meta_type_t const* type;
    char const* key;

    if( ( name != ((void*)0) && !AppleNameToMeta( name, &type, &key ) ) ||
        ( name == ((void*)0) && !AtomXA9ToMeta( i_type, &type, &key ) ) )
    {
        return 0;
    }

    char* psz_utf = ExtractString( p_box );

    if( psz_utf )
    {
        if( type ) vlc_meta_Set( p_meta, *type, psz_utf );
        else vlc_meta_AddExtra( p_meta, key, psz_utf );

        free( psz_utf );
    }

    return 1;
}
