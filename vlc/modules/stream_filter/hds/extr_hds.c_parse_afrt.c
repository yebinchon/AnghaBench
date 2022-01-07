
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {size_t fragment_run_count; TYPE_1__* fragment_runs; int quality_segment_modifier; void* afrt_timescale; } ;
typedef TYPE_2__ hds_stream_t ;
typedef int afrt_len ;
struct TYPE_4__ {int discont; void* fragment_duration; int fragment_timestamp; void* fragment_number_start; } ;


 size_t MAX_HDS_FRAGMENT_RUNS ;
 void* U32_AT (int*) ;
 int U64_AT (int*) ;
 int* memchr (int*,char,int) ;
 scalar_t__ memcmp (int*,char*,int) ;
 int msg_Err (int *,char*,...) ;
 int strlen (int ) ;
 int strncmp (char*,int ,int ) ;

__attribute__((used)) static uint8_t* parse_afrt( vlc_object_t* p_this,
                        hds_stream_t* s,
                        uint8_t* data,
                        uint8_t* data_end )
{
    uint8_t* data_p = data;

    uint32_t afrt_len = U32_AT( data_p );
    if( afrt_len > data_end - data ||
        data_end - data < 9 )
    {
        msg_Err( p_this, "Not enough afrt data %u, %td", afrt_len,
                 data_end - data );
        return ((void*)0);
    }
    data_p += sizeof(afrt_len);

    if( 0 != memcmp( data_p, "afrt", 4 ) )
    {
        msg_Err( p_this, "Cant find afrt in bootstrap" );
        return ((void*)0);
    }
    data_p += 4;


    data_p += 4;

    if( data_end - data_p < 9 )
    {
        msg_Err( p_this, "afrt is too short" );
        return ((void*)0);
    }

    s->afrt_timescale = U32_AT( data_p );
    data_p += 4;

    bool quality_found = 0;
    if( ! s->quality_segment_modifier )
    {
        quality_found = 1;
    }

    uint32_t quality_entry_count = *data_p;
    data_p++;
    while( quality_entry_count-- > 0 )
    {
        char* str_start = (char*)data_p;
        data_p = memchr( data_p, '\0', data_end - data_p );
        if( ! data_p )
        {
            msg_Err( p_this, "Couldn't find quality entry string in afrt" );
            return ((void*)0);
        }
        data_p++;

        if( ! quality_found )
        {
            if( ! strncmp( str_start, s->quality_segment_modifier,
                           strlen(s->quality_segment_modifier) ) )
            {
                quality_found = 1;
            }
        }
    }

    if( data_end - data_p < 5 )
    {
        msg_Err( p_this, "No more space in afrt after quality entries" );
        return ((void*)0);
    }

    uint32_t fragment_run_entry_count = U32_AT( data_p );
    data_p += sizeof(uint32_t);

    while(fragment_run_entry_count-- > 0)
    {
        if( data_end - data_p < 16 )
        {
            msg_Err( p_this, "Not enough data in afrt" );
            return ((void*)0);
        }

        if( s->fragment_run_count >= MAX_HDS_FRAGMENT_RUNS )
        {
            msg_Err( p_this, "Too many fragment runs, exiting" );
            return ((void*)0);
        }

        s->fragment_runs[s->fragment_run_count].fragment_number_start = U32_AT(data_p);
        data_p += 4;

        s->fragment_runs[s->fragment_run_count].fragment_timestamp = U64_AT( data_p );
        data_p += 8;

        s->fragment_runs[s->fragment_run_count].fragment_duration = U32_AT( data_p );
        data_p += 4;

        s->fragment_runs[s->fragment_run_count].discont = 0;
        if( s->fragment_runs[s->fragment_run_count].fragment_duration == 0 )
        {

            s->fragment_runs[s->fragment_run_count].discont = *(data_p++);
        }

        s->fragment_run_count++;
    }

    if ( s->fragment_runs[s->fragment_run_count-1].fragment_number_start == 0 &&
         s->fragment_runs[s->fragment_run_count-1].fragment_timestamp == 0 &&
         s->fragment_runs[s->fragment_run_count-1].fragment_duration == 0 &&
         s->fragment_runs[s->fragment_run_count-1].discont == 0 )
    {

        s->fragment_run_count--;
    }

    return data_p;
}
