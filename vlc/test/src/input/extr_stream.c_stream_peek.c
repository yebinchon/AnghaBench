
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int s; } ;
struct reader {TYPE_1__ u; } ;
typedef int ssize_t ;


 int vlc_stream_Peek (int ,int const**,size_t) ;

__attribute__((used)) static ssize_t
stream_peek( struct reader *p_reader, const uint8_t **pp_buf, size_t i_len )
{
    return vlc_stream_Peek( p_reader->u.s, pp_buf, i_len );
}
