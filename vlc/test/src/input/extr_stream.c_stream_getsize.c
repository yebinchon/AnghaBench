
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int s; } ;
struct reader {TYPE_1__ u; } ;


 int assert (int) ;
 scalar_t__ vlc_stream_GetSize (int ,int *) ;

__attribute__((used)) static uint64_t
stream_getsize( struct reader *p_reader )
{
    uint64_t i_size;

    assert( vlc_stream_GetSize( p_reader->u.s, &i_size ) == 0 );
    return i_size;
}
