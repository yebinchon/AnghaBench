
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int s; } ;
struct reader {TYPE_1__ u; } ;


 int vlc_stream_Seek (int ,int ) ;

__attribute__((used)) static int
stream_seek( struct reader *p_reader, uint64_t i_offset )
{
    return vlc_stream_Seek( p_reader->u.s, i_offset );
}
