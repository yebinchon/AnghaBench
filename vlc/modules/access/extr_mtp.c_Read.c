
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ ssize_t ;




 int _ (char*) ;
 int errno ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 scalar_t__ read (int,void*,size_t) ;
 int vlc_dialog_display_error (TYPE_1__*,int ,int ,int ) ;
 int vlc_strerror (int) ;
 int vlc_strerror_c (int) ;

__attribute__((used)) static ssize_t Read( stream_t *p_access, void *p_buffer, size_t i_len )
{
    int *fdp = p_access->p_sys, fd = *fdp;
    ssize_t i_ret = read( fd, p_buffer, i_len );

    if( i_ret < 0 )
    {
        switch( errno )
        {
            case 128:
            case 129:
                break;

            default:
                msg_Err( p_access, "read failed: %s", vlc_strerror_c(errno) );
                vlc_dialog_display_error( p_access, _( "File reading failed" ),
                    _( "VLC could not read the file: %s" ),
                    vlc_strerror(errno) );
                return 0;
        }
    }

    return i_ret;
}
