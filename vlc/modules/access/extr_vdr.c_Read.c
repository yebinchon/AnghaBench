
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_11__ {int fd; int i_current_file; int offset; } ;
typedef TYPE_2__ access_sys_t ;


 scalar_t__ EINTR ;
 int FILE_COUNT ;
 int FindSeekpoint (TYPE_1__*) ;
 int ImportNextFile (TYPE_1__*) ;
 int SwitchFile (TYPE_1__*,int) ;
 int UpdateFileSize (TYPE_1__*) ;
 int _ (char*) ;
 scalar_t__ errno ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 scalar_t__ read (int,void*,size_t) ;
 int vlc_dialog_display_error (TYPE_1__*,int ,int ,int ) ;
 int vlc_strerror (scalar_t__) ;
 int vlc_strerror_c (scalar_t__) ;

__attribute__((used)) static ssize_t Read( stream_t *p_access, void *p_buffer, size_t i_len )
{
    access_sys_t *p_sys = p_access->p_sys;

    if( p_sys->fd == -1 )

        return 0;

    ssize_t i_ret = read( p_sys->fd, p_buffer, i_len );

    if( i_ret > 0 )
    {

        p_sys->offset += i_ret;
        UpdateFileSize( p_access );
        FindSeekpoint( p_access );
        return i_ret;
    }
    else if( i_ret == 0 )
    {

        if( p_sys->i_current_file >= FILE_COUNT - 1 )
            ImportNextFile( p_access );

        SwitchFile( p_access, p_sys->i_current_file + 1 );
        return -1;
    }
    else if( errno == EINTR )
    {

        return -1;
    }
    else
    {

        msg_Err( p_access, "failed to read (%s)", vlc_strerror_c(errno) );
        vlc_dialog_display_error( p_access, _("File reading failed"),
            _("VLC could not read the file (%s)."),
            vlc_strerror(errno) );
        SwitchFile( p_access, -1 );
        return 0;
    }
}
