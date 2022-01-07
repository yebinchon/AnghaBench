
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {long i_index_size; char* p_index; int i_index_payload; int i_index_count; } ;
struct TYPE_5__ {TYPE_1__ skeleton; int i_length; int i_serial_no; } ;
typedef TYPE_2__ ogg_stream_t ;


 int CLOCK_FREQ ;
 long INDEX_BASE_SIZE ;
 int SetDWLE (int *,int ) ;
 int SetQWLE (int *,int ) ;
 int * calloc (long,int) ;
 int memcpy (int *,char*,int) ;

__attribute__((used)) static void OggGetSkeletonIndex( uint8_t **pp_buffer, long *pi_size, ogg_stream_t *p_stream )
{
    uint8_t *p_buffer = calloc( INDEX_BASE_SIZE + p_stream->skeleton.i_index_size, sizeof(uint8_t) );
    if ( !p_buffer ) return;
    *pp_buffer = p_buffer;

    memcpy( p_buffer, "index", 6 );
    SetDWLE( &p_buffer[6], p_stream->i_serial_no );
    SetQWLE( &p_buffer[10], p_stream->skeleton.i_index_count );
    SetQWLE( &p_buffer[18], CLOCK_FREQ );
    SetQWLE( &p_buffer[34], p_stream->i_length );
    memcpy( p_buffer + INDEX_BASE_SIZE, p_stream->skeleton.p_index, p_stream->skeleton.i_index_payload );
    *pi_size = INDEX_BASE_SIZE + p_stream->skeleton.i_index_size;
}
