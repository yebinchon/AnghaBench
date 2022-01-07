
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_12__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_13__ {scalar_t__ i_handle; scalar_t__ segment_max_length; int ongoing_segment; int full_segments; } ;
typedef TYPE_2__ sout_access_out_sys_t ;
struct TYPE_14__ {scalar_t__ i_length; } ;
typedef TYPE_3__ block_t ;


 int block_ChainProperties (int ,int *,int *,scalar_t__*) ;
 int block_ChainRelease (TYPE_3__*) ;
 int closeCurrentSegment (TYPE_1__*,TYPE_2__*,int) ;
 scalar_t__ openNextFile (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ writeSegment (TYPE_1__*) ;

__attribute__((used)) static int CheckSegmentChange( sout_access_out_t *p_access, block_t *p_buffer )
{
    sout_access_out_sys_t *p_sys = p_access->p_sys;
    ssize_t writevalue = 0;

    vlc_tick_t current_length = 0;
    vlc_tick_t ongoing_length = 0;

    block_ChainProperties( p_sys->full_segments, ((void*)0), ((void*)0), &current_length );
    block_ChainProperties( p_sys->ongoing_segment, ((void*)0), ((void*)0), &ongoing_length );

    if( p_sys->i_handle > 0 &&
       (( p_buffer->i_length + current_length + ongoing_length ) >= p_sys->segment_max_length ) )
    {
        writevalue = writeSegment( p_access );
        if( unlikely( writevalue < 0 ) )
        {
            block_ChainRelease ( p_buffer );
            return -1;
        }
        closeCurrentSegment( p_access, p_sys, 0 );
        return writevalue;
    }

    if ( unlikely( p_sys->i_handle < 0 ) )
    {
        if ( openNextFile( p_access, p_sys ) < 0 )
           return -1;
    }
    return writevalue;
}
