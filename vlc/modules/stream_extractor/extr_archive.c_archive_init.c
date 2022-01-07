
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_3__ {int b_seekable_archive; int b_seekable_source; size_t i_callback_data; int p_archive; int p_obj; int * pp_callback_data; } ;
typedef TYPE_1__ private_sys_t ;


 int STREAM_CAN_SEEK ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int archive_error_string (int ) ;
 scalar_t__ archive_read_append_callback_data (int ,int ) ;
 int archive_read_new () ;
 scalar_t__ archive_read_open2 (int ,int ,int *,int ,int ,int ) ;
 scalar_t__ archive_read_set_seek_callback (int ,int ) ;
 scalar_t__ archive_read_set_switch_callback (int ,int ) ;
 int archive_read_support_filter_all (int ) ;
 int archive_read_support_format_all (int ) ;
 int libarchive_exit_cb ;
 int libarchive_jump_cb ;
 int libarchive_read_cb ;
 int libarchive_seek_cb ;
 int libarchive_skip_cb ;
 int msg_Dbg (int ,char*,...) ;
 int msg_Err (int ,char*) ;
 int msg_Warn (int ,char*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_stream_Control (int *,int ,int*) ;

__attribute__((used)) static int archive_init( private_sys_t* p_sys, stream_t* source )
{


    p_sys->p_archive = archive_read_new();

    if( unlikely( !p_sys->p_archive ) )
    {
        msg_Dbg( p_sys->p_obj, "unable to create libarchive handle" );
        return VLC_EGENERIC;
    }



    p_sys->b_seekable_archive = 0;

    if( vlc_stream_Control( source, STREAM_CAN_SEEK,
        &p_sys->b_seekable_source ) )
    {
        msg_Warn( p_sys->p_obj, "unable to query whether source stream can seek" );
        p_sys->b_seekable_source = 0;
    }

    if( p_sys->b_seekable_source )
    {
        if( archive_read_set_seek_callback( p_sys->p_archive,
            libarchive_seek_cb ) )
        {
            msg_Err( p_sys->p_obj, "archive_read_set_callback failed, aborting." );
            return VLC_EGENERIC;
        }
    }



    archive_read_support_filter_all( p_sys->p_archive );
    archive_read_support_format_all( p_sys->p_archive );



    if( archive_read_set_switch_callback( p_sys->p_archive,
        libarchive_jump_cb ) )
    {
        msg_Err( p_sys->p_obj, "archive_read_set_switch_callback failed, aborting." );
        return VLC_EGENERIC;
    }

    for( size_t i = 0; i < p_sys->i_callback_data; ++i )
    {
        if( archive_read_append_callback_data( p_sys->p_archive,
            p_sys->pp_callback_data[i] ) )
        {
            return VLC_EGENERIC;
        }
    }



    if( archive_read_open2( p_sys->p_archive, p_sys->pp_callback_data[0], ((void*)0),
        libarchive_read_cb, libarchive_skip_cb, libarchive_exit_cb ) )
    {
        msg_Dbg( p_sys->p_obj, "libarchive: %s",
          archive_error_string( p_sys->p_archive ) );

        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
