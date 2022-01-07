
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int ssize_t ;
struct TYPE_10__ {int i_icy_meta; int offset; int i_icy_offset; scalar_t__ b_reconnect; int * stream; } ;
typedef TYPE_2__ access_sys_t ;


 scalar_t__ Connect (TYPE_1__*) ;
 int Disconnect (TYPE_1__*) ;
 scalar_t__ ReadData (TYPE_1__*,int*,int *,int) ;
 scalar_t__ ReadICYMeta (TYPE_1__*) ;
 int UINT64_MAX ;
 int assert (int) ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static ssize_t Read( stream_t *p_access, void *p_buffer, size_t i_len )
{
    access_sys_t *p_sys = p_access->p_sys;

    if (p_sys->stream == ((void*)0))
        return 0;

    int i_chunk = i_len;

    if( p_sys->i_icy_meta > 0 )
    {
        if( UINT64_MAX - i_chunk < p_sys->offset )
            i_chunk = UINT64_MAX - p_sys->offset;

        if( p_sys->offset + i_chunk > p_sys->i_icy_offset )
            i_chunk = p_sys->i_icy_offset - p_sys->offset;
    }

    int i_read = 0;
    if( ReadData( p_access, &i_read, (uint8_t*)p_buffer, i_chunk ) )
        return 0;

    if( i_read < 0 )
        return -1;

    if( i_read == 0 )
    {
        Disconnect( p_access );
        if( p_sys->b_reconnect )
        {
            msg_Dbg( p_access, "got disconnected, trying to reconnect" );
            if( Connect( p_access ) )
                msg_Dbg( p_access, "reconnection failed" );
            else
                return -1;
        }
        return 0;
    }

    assert( i_read >= 0 );
    p_sys->offset += i_read;

    if( p_sys->i_icy_meta > 0 &&
        p_sys->offset == p_sys->i_icy_offset )
    {
        if( ReadICYMeta( p_access ) )
            return 0;
        p_sys->i_icy_offset = p_sys->offset + p_sys->i_icy_meta;
    }

    return i_read;
}
