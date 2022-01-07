
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_9__ {int fd; unsigned int i_current_file; } ;
typedef TYPE_2__ access_sys_t ;


 unsigned int FILE_COUNT ;
 char* GetFilePath (TYPE_1__*,unsigned int) ;
 int O_RDONLY ;
 int OptimizeForRead (int) ;
 int S_ISREG (int ) ;
 int _ (char*) ;
 int errno ;
 int free (char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int msg_Dbg (TYPE_1__*,char*,char*) ;
 int msg_Err (TYPE_1__*,char*,char*,...) ;
 int vlc_close (int) ;
 int vlc_dialog_display_error (TYPE_1__*,int ,int ,char*,int ) ;
 int vlc_open (char*,int ) ;
 int vlc_strerror (int ) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static bool SwitchFile( stream_t *p_access, unsigned i_file )
{
    access_sys_t *p_sys = p_access->p_sys;


    if( p_sys->fd != -1 && p_sys->i_current_file == i_file )
        return 1;


    if( p_sys->fd != -1 )
    {
        vlc_close( p_sys->fd );
        p_sys->fd = -1;
    }


    if( i_file >= FILE_COUNT )
        return 0;
    p_sys->i_current_file = i_file;


    char *psz_path = GetFilePath( p_access, i_file );
    if( !psz_path )
        return 0;
    p_sys->fd = vlc_open( psz_path, O_RDONLY );

    if( p_sys->fd == -1 )
    {
        msg_Err( p_access, "Failed to open %s: %s", psz_path,
                 vlc_strerror_c(errno) );
        goto error;
    }


    struct stat st;
    if( fstat( p_sys->fd, &st ) || !S_ISREG( st.st_mode ) )
    {
        msg_Err( p_access, "%s is not a regular file", psz_path );
        goto error;
    }

    OptimizeForRead( p_sys->fd );

    msg_Dbg( p_access, "opened %s", psz_path );
    free( psz_path );
    return 1;

error:
    vlc_dialog_display_error (p_access, _("File reading failed"), _("VLC could not"
        " open the file \"%s\" (%s)."), psz_path, vlc_strerror(errno) );
    if( p_sys->fd != -1 )
    {
        vlc_close( p_sys->fd );
        p_sys->fd = -1;
    }
    free( psz_path );
    return 0;
}
