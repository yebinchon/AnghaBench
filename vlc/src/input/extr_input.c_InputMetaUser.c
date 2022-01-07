
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_meta_t ;
typedef int input_thread_t ;


 int EnsureUTF8 (char*) ;
 int free (char*) ;
 char* var_GetNonEmptyString (int *,char const*) ;





 int vlc_meta_Set (int *,int,char*) ;



__attribute__((used)) static void InputMetaUser( input_thread_t *p_input, vlc_meta_t *p_meta )
{
    static const struct { int i_meta; const char *psz_name; } p_list[] = {
        { 129, "meta-title" },
        { 134, "meta-artist" },
        { 130, "meta-genre" },
        { 133, "meta-copyright" },
        { 131, "meta-description" },
        { 132, "meta-date" },
        { 128, "meta-url" },
        { 0, ((void*)0) }
    };


    for( int i = 0; p_list[i].psz_name; i++ )
    {
        char *psz_string = var_GetNonEmptyString( p_input, p_list[i].psz_name );
        if( !psz_string )
            continue;

        EnsureUTF8( psz_string );
        vlc_meta_Set( p_meta, p_list[i].i_meta, psz_string );
        free( psz_string );
    }
}
