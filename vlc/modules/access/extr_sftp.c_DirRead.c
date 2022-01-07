
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct vlc_readdir_helper {int dummy; } ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int input_item_node_t ;
struct TYPE_10__ {int psz_base_url; int file; } ;
typedef TYPE_2__ access_sys_t ;
struct TYPE_11__ {int permissions; } ;
typedef TYPE_3__ LIBSSH2_SFTP_ATTRIBUTES ;


 int ITEM_NET ;
 int ITEM_TYPE_DIRECTORY ;
 int ITEM_TYPE_FILE ;
 int LIBSSH2_ERROR_BUFFER_TOO_SMALL ;
 int LIBSSH2_ERROR_EAGAIN ;
 scalar_t__ LIBSSH2_SFTP_S_ISDIR (int ) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int asprintf (char**,char*,int ,char*) ;
 int free (char*) ;
 int libssh2_sftp_readdir (int ,char*,size_t,TYPE_3__*) ;
 char* malloc (size_t) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Err (TYPE_1__*,char*) ;
 int vlc_readdir_helper_additem (struct vlc_readdir_helper*,char*,int *,char*,int,int ) ;
 int vlc_readdir_helper_finish (struct vlc_readdir_helper*,int) ;
 int vlc_readdir_helper_init (struct vlc_readdir_helper*,TYPE_1__*,int *) ;
 char* vlc_uri_encode (char*) ;

__attribute__((used)) static int DirRead (stream_t *p_access, input_item_node_t *p_current_node)
{
    access_sys_t *p_sys = p_access->p_sys;
    LIBSSH2_SFTP_ATTRIBUTES attrs;
    int i_ret = VLC_SUCCESS;
    int err;





    size_t i_size = 1024;
    char *psz_file = malloc( i_size );

    if( !psz_file )
        return VLC_ENOMEM;

    struct vlc_readdir_helper rdh;
    vlc_readdir_helper_init( &rdh, p_access, p_current_node );

    while( i_ret == VLC_SUCCESS
        && 0 != ( err = libssh2_sftp_readdir( p_sys->file, psz_file, i_size, &attrs ) ) )
    {
        if( err < 0 )
        {
            if( err == LIBSSH2_ERROR_BUFFER_TOO_SMALL )
            {

                msg_Dbg( p_access, "skipped too long file name" );
                continue;
            }
            if( err == LIBSSH2_ERROR_EAGAIN )
            {
                continue;
            }
            msg_Err( p_access, "directory read failed" );
            break;
        }



        char *psz_full_uri, *psz_uri;

        psz_uri = vlc_uri_encode( psz_file );
        if( psz_uri == ((void*)0) )
        {
            i_ret = VLC_ENOMEM;
            break;
        }

        if( asprintf( &psz_full_uri, "%s/%s", p_sys->psz_base_url, psz_uri ) == -1 )
        {
            free( psz_uri );
            i_ret = VLC_ENOMEM;
            break;
        }
        free( psz_uri );

        int i_type = LIBSSH2_SFTP_S_ISDIR( attrs.permissions ) ? ITEM_TYPE_DIRECTORY : ITEM_TYPE_FILE;
        i_ret = vlc_readdir_helper_additem( &rdh, psz_full_uri, ((void*)0), psz_file,
                                            i_type, ITEM_NET );
        free( psz_full_uri );
    }

    vlc_readdir_helper_finish( &rdh, i_ret == VLC_SUCCESS );
    free( psz_file );
    return i_ret;
}
