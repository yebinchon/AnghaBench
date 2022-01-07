
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int libarchive_t ;
struct TYPE_5__ {int * p_source; int psz_url; TYPE_1__* p_sys; } ;
typedef TYPE_2__ libarchive_callback_t ;
struct TYPE_4__ {int p_obj; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ libarchive_exit_cb (int *,TYPE_2__*) ;
 int * vlc_stream_NewURL (int ,int ) ;

__attribute__((used)) static int libarchive_jump_cb( libarchive_t* p_arc, void* p_obj_current,
  void* p_obj_next )
{
    libarchive_callback_t* p_current = (libarchive_callback_t*)p_obj_current;
    libarchive_callback_t* p_next = (libarchive_callback_t*)p_obj_next;

    if( libarchive_exit_cb( p_arc, p_current ) )
        return ARCHIVE_FATAL;

    if( p_next->p_source == ((void*)0) )
        p_next->p_source = vlc_stream_NewURL( p_next->p_sys->p_obj,
                                              p_next->psz_url );

    return p_next->p_source ? ARCHIVE_OK : ARCHIVE_FATAL;
}
