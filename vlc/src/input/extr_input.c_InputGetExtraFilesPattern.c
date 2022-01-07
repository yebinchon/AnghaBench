
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
typedef int input_thread_t ;


 int S_ISREG (int ) ;
 int TAB_APPEND (int,char**,char*) ;
 int TAB_INIT (int,char**) ;
 scalar_t__ asprintf (char**,char const*,char*,int) ;
 int assert (int) ;
 int free (char*) ;
 char* get_path (char*) ;
 int msg_Dbg (int *,char*,char*) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 char* vlc_path2uri (char*,int *) ;
 scalar_t__ vlc_stat (char*,struct stat*) ;

__attribute__((used)) static void InputGetExtraFilesPattern( input_thread_t *p_input,
                                       int *pi_list, char ***pppsz_list,
                                       const char *psz_path,
                                       const char *psz_match,
                                       const char *psz_format,
                                       int i_start, int i_stop )
{
    int i_list;
    char **ppsz_list;
    TAB_INIT( i_list, ppsz_list );

    char *psz_base = strdup( psz_path );
    if( !psz_base )
        goto exit;


    char *psz_end = &psz_base[strlen(psz_base)-strlen(psz_match)];
    assert( psz_end >= psz_base);
    *psz_end = '\0';


    for( int i = i_start; i <= i_stop; i++ )
    {
        char *psz_probe;
        if( asprintf( &psz_probe, psz_format, psz_base, i ) < 0 )
            break;

        char *filepath = get_path( psz_probe );

        struct stat st;
        if( filepath == ((void*)0) ||
            vlc_stat( filepath, &st ) || !S_ISREG( st.st_mode ) || !st.st_size )
        {
            free( filepath );
            free( psz_probe );
            break;
        }

        msg_Dbg( p_input, "Detected extra file `%s'", filepath );

        char* psz_uri = vlc_path2uri( filepath, ((void*)0) );
        if( psz_uri )
            TAB_APPEND( i_list, ppsz_list, psz_uri );

        free( filepath );
        free( psz_probe );
    }
    free( psz_base );
exit:
    *pi_list = i_list;
    *pppsz_list = ppsz_list;
}
