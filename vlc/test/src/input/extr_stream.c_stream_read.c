
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
struct reader {TYPE_1__ u; } ;
typedef int ssize_t ;


 int vlc_stream_Read (int ,void*,size_t) ;

__attribute__((used)) static ssize_t
stream_read( struct reader *p_reader, void *p_buf, size_t i_len )
{
    return vlc_stream_Read( p_reader->u.s, p_buf, i_len );
}
