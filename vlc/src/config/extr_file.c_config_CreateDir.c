
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int DIR_SEP_CHAR ;


 int errno ;
 int msg_Warn (int *,char*,char const*,int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* strrchr (char*,int ) ;
 scalar_t__ vlc_mkdir (char const*,int) ;
 int vlc_strerror_c (int) ;

int config_CreateDir( vlc_object_t *p_this, const char *psz_dirname )
{
    if( !psz_dirname || !*psz_dirname ) return -1;

    if( vlc_mkdir( psz_dirname, 0700 ) == 0 )
        return 0;

    switch( errno )
    {
        case 129:
            return 0;

        case 128:
        {

            char psz_parent[strlen( psz_dirname ) + 1], *psz_end;
            strcpy( psz_parent, psz_dirname );

            psz_end = strrchr( psz_parent, DIR_SEP_CHAR );
            if( psz_end && psz_end != psz_parent )
            {
                *psz_end = '\0';
                if( config_CreateDir( p_this, psz_parent ) == 0 )
                {
                    if( !vlc_mkdir( psz_dirname, 0700 ) )
                        return 0;
                }
            }
        }
    }

    msg_Warn( p_this, "could not create %s: %s", psz_dirname,
              vlc_strerror_c(errno) );
    return -1;
}
