
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_first_frame_index; int b_oggds; } ;
typedef TYPE_1__ logical_stream_t ;
typedef int int64_t ;



bool Ogg_GranuleIsValid( const logical_stream_t *p_stream, int64_t i_granule )
{

    return !( i_granule < p_stream->i_first_frame_index - !!p_stream->b_oggds );
}
