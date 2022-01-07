
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int stream_t ;
typedef scalar_t__ ssize_t ;
typedef int libarchive_t ;
struct TYPE_2__ {int * p_source; } ;
typedef TYPE_1__ libarchive_callback_t ;
typedef scalar_t__ la_int64_t ;


 scalar_t__ ARCHIVE_FATAL ;



 int VLC_UNUSED (int *) ;
 scalar_t__ stream_Size (int *) ;
 int vlc_assert_unreachable () ;
 scalar_t__ vlc_stream_Seek (int *,scalar_t__) ;
 scalar_t__ vlc_stream_Tell (int *) ;

__attribute__((used)) static la_int64_t libarchive_seek_cb( libarchive_t* p_arc, void* p_obj,
  la_int64_t offset, int whence )
{
    VLC_UNUSED( p_arc );

    libarchive_callback_t* p_cb = (libarchive_callback_t*)p_obj;
    stream_t* p_source = p_cb->p_source;

    ssize_t whence_pos;

    switch( whence )
    {
        case 128: whence_pos = 0; break;
        case 130: whence_pos = vlc_stream_Tell( p_source ); break;
        case 129: whence_pos = stream_Size( p_source ); break;
              default: vlc_assert_unreachable();

    }

    if( whence_pos < 0 || vlc_stream_Seek( p_source, whence_pos + offset ) )
        return ARCHIVE_FATAL;

    return vlc_stream_Tell( p_source );
}
