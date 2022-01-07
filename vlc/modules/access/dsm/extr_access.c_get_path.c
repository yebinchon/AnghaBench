
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_6__ {int * psz_path; } ;
struct TYPE_8__ {char* psz_fullpath; char* psz_share; char* psz_path; TYPE_1__ url; } ;
typedef TYPE_3__ access_sys_t ;


 int backslash_path (char*) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char* vlc_uri_decode_duplicate (int *) ;

__attribute__((used)) static bool get_path( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;
    char *iter;

    if( p_sys->url.psz_path == ((void*)0) )
        return 0;

    p_sys->psz_fullpath = vlc_uri_decode_duplicate( p_sys->url.psz_path );
    if( p_sys->psz_fullpath == ((void*)0) )
        return 0;

    backslash_path( p_sys->psz_fullpath );


    if( strlen( p_sys->psz_fullpath ) > 1 )
    {
        iter = p_sys->psz_fullpath;
        while( *iter == '\\' ) iter++;

        p_sys->psz_share = iter;
    }
    else
    {
        msg_Dbg( p_access, "no share, nor file path provided, will switch to browser");
        return 0;
    }

    iter = strchr( p_sys->psz_share, '\\' );
    if( iter == ((void*)0) || strlen(iter + 1) == 0 )
    {
        if( iter != ((void*)0) )
            *iter = '\0';
        p_sys->psz_path = "";

        msg_Dbg( p_access, "no file path provided, will switch to browser ");
        return 1;
    }

    p_sys->psz_path = iter + 1;
    *iter = '\0';

    return 1;
}
