
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int buffer; int p_archive; } ;
typedef TYPE_1__ private_sys_t ;
typedef int libarchive_t ;
struct TYPE_4__ {TYPE_1__* p_sys; int * p_source; } ;
typedef TYPE_2__ libarchive_callback_t ;
typedef scalar_t__ la_ssize_t ;


 scalar_t__ ARCHIVE_FATAL ;
 int VLC_UNUSED (int *) ;
 int archive_set_error (int ,scalar_t__,char*,scalar_t__) ;
 scalar_t__ vlc_stream_Read (int *,int *,int) ;

__attribute__((used)) static la_ssize_t libarchive_read_cb( libarchive_t* p_arc, void* p_obj,
  const void** pp_dst )
{
    VLC_UNUSED( p_arc );

    libarchive_callback_t* p_cb = (libarchive_callback_t*)p_obj;

    stream_t* p_source = p_cb->p_source;
    private_sys_t* p_sys = p_cb->p_sys;

    ssize_t i_ret = vlc_stream_Read( p_source, &p_sys->buffer,
      sizeof( p_sys->buffer ) );

    if( i_ret < 0 )
    {
        archive_set_error( p_sys->p_archive, ARCHIVE_FATAL,
          "libarchive_read_cb failed = %zd", i_ret );

        return ARCHIVE_FATAL;
    }

    *pp_dst = &p_sys->buffer;
    return i_ret;
}
