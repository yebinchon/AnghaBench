
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {size_t i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_1__ block_t ;
struct TYPE_7__ {size_t i_write; size_t i_data; int lock; int p_dsbuffer; int format; int chan_table; int chans_to_reorder; } ;
typedef TYPE_2__ aout_stream_sys_t ;
typedef scalar_t__ HRESULT ;


 scalar_t__ DSERR_BUFFERLOST ;
 size_t DS_BUF_SIZE ;
 scalar_t__ DS_OK ;
 scalar_t__ IDirectSoundBuffer_Lock (int ,size_t,size_t,void**,unsigned long*,void**,unsigned long*,int ) ;
 int IDirectSoundBuffer_Restore (int ) ;
 int IDirectSoundBuffer_Unlock (int ,void*,unsigned long,void*,unsigned long) ;
 int aout_ChannelReorder (scalar_t__,size_t,int ,int ,int ) ;
 int block_Release (TYPE_1__*) ;
 int memcpy (void*,scalar_t__,unsigned long) ;
 int memset (void*,int ,unsigned long) ;
 int msg_Err (int *,char*) ;
 int msg_Warn (int *,char*) ;
 scalar_t__ unlikely (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static HRESULT FillBuffer( vlc_object_t *obj, aout_stream_sys_t *p_sys,
                           block_t *p_buffer )
{
    size_t towrite = (p_buffer != ((void*)0)) ? p_buffer->i_buffer : DS_BUF_SIZE;
    void *p_write_position, *p_wrap_around;
    unsigned long l_bytes1, l_bytes2;
    HRESULT dsresult;

    vlc_mutex_lock( &p_sys->lock );


    dsresult = IDirectSoundBuffer_Lock(
           p_sys->p_dsbuffer,
           p_sys->i_write,
           towrite,
           &p_write_position,
           &l_bytes1,
           &p_wrap_around,
           &l_bytes2,
           0 );
    if( dsresult == DSERR_BUFFERLOST )
    {
        IDirectSoundBuffer_Restore( p_sys->p_dsbuffer );
        dsresult = IDirectSoundBuffer_Lock(
                               p_sys->p_dsbuffer,
                               p_sys->i_write,
                               towrite,
                               &p_write_position,
                               &l_bytes1,
                               &p_wrap_around,
                               &l_bytes2,
                               0 );
    }
    if( dsresult != DS_OK )
    {
        msg_Warn( obj, "cannot lock buffer" );
        if( p_buffer != ((void*)0) )
            block_Release( p_buffer );
        vlc_mutex_unlock( &p_sys->lock );
        return dsresult;
    }

    if( p_buffer == ((void*)0) )
    {
        memset( p_write_position, 0, l_bytes1 );
        memset( p_wrap_around, 0, l_bytes2 );
    }
    else
    {
        if( p_sys->chans_to_reorder )
            aout_ChannelReorder( p_buffer->p_buffer, p_buffer->i_buffer,
                                 p_sys->chans_to_reorder, p_sys->chan_table,
                                 p_sys->format );

        memcpy( p_write_position, p_buffer->p_buffer, l_bytes1 );
        if( p_wrap_around && l_bytes2 )
            memcpy( p_wrap_around, p_buffer->p_buffer + l_bytes1, l_bytes2 );

        if( unlikely( ( l_bytes1 + l_bytes2 ) < p_buffer->i_buffer ) )
            msg_Err( obj, "Buffer overrun");

        block_Release( p_buffer );
    }


    IDirectSoundBuffer_Unlock( p_sys->p_dsbuffer, p_write_position, l_bytes1,
                               p_wrap_around, l_bytes2 );

    p_sys->i_write += towrite;
    p_sys->i_write %= DS_BUF_SIZE;
    p_sys->i_data += towrite;
    vlc_mutex_unlock( &p_sys->lock );

    return DS_OK;
}
