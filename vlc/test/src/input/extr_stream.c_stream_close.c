
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
struct reader {int p_data; TYPE_1__ u; } ;


 int free (struct reader*) ;
 int libvlc_release (int ) ;
 int vlc_stream_Delete (int ) ;

__attribute__((used)) static void
stream_close( struct reader *p_reader )
{
    vlc_stream_Delete( p_reader->u.s );
    libvlc_release( p_reader->p_data );
    free( p_reader );
}
