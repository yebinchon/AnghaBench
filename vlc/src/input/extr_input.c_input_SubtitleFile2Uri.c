
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int input_thread_t ;


 scalar_t__ S_ISREG (int ) ;
 int free (char*) ;
 int msg_Dbg (int *,char*,char*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 char* strdup (char const*) ;
 char* strrchr (char const*,char) ;
 char* vlc_path2uri (char const*,int *) ;
 int vlc_stat (char*,struct stat*) ;

__attribute__((used)) static char *input_SubtitleFile2Uri( input_thread_t *p_input,
                                     const char *psz_subtitle )
{


    char *psz_idxpath = ((void*)0);
    char *psz_extension = strrchr( psz_subtitle, '.');
    if( psz_extension && strcmp( psz_extension, ".sub" ) == 0 )
    {
        psz_idxpath = strdup( psz_subtitle );
        if( psz_idxpath )
        {
            struct stat st;

            psz_extension = psz_extension - psz_subtitle + psz_idxpath;
            strcpy( psz_extension, ".idx" );

            if( !vlc_stat( psz_idxpath, &st ) && S_ISREG( st.st_mode ) )
            {
                msg_Dbg( p_input, "using %s as subtitle file instead of %s",
                         psz_idxpath, psz_subtitle );
                psz_subtitle = psz_idxpath;
            }
        }
    }

    char *psz_uri = vlc_path2uri( psz_subtitle, ((void*)0) );
    free( psz_idxpath );
    return psz_uri;
}
