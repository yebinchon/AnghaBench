#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {size_t i_buffer; scalar_t__ p_buffer; } ;
typedef  TYPE_1__ block_t ;
struct TYPE_7__ {size_t i_write; size_t i_data; int /*<<< orphan*/  lock; int /*<<< orphan*/  p_dsbuffer; int /*<<< orphan*/  format; int /*<<< orphan*/  chan_table; int /*<<< orphan*/  chans_to_reorder; } ;
typedef  TYPE_2__ aout_stream_sys_t ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ DSERR_BUFFERLOST ; 
 size_t DS_BUF_SIZE ; 
 scalar_t__ DS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t,size_t,void**,unsigned long*,void**,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,unsigned long,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC12( vlc_object_t *obj, aout_stream_sys_t *p_sys,
                           block_t *p_buffer )
{
    size_t towrite = (p_buffer != NULL) ? p_buffer->i_buffer : DS_BUF_SIZE;
    void *p_write_position, *p_wrap_around;
    unsigned long l_bytes1, l_bytes2;
    HRESULT dsresult;

    FUNC10( &p_sys->lock );

    /* Before copying anything, we have to lock the buffer */
    dsresult = FUNC0(
           p_sys->p_dsbuffer,    /* DS buffer */
           p_sys->i_write,       /* Start offset */
           towrite,                /* Number of bytes */
           &p_write_position,    /* Address of lock start */
           &l_bytes1,            /* Count of bytes locked before wrap around */
           &p_wrap_around,       /* Buffer address (if wrap around) */
           &l_bytes2,            /* Count of bytes after wrap around */
           0 );                  /* Flags: DSBLOCK_FROMWRITECURSOR is buggy */
    if( dsresult == DSERR_BUFFERLOST )
    {
        FUNC1( p_sys->p_dsbuffer );
        dsresult = FUNC0(
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
        FUNC8( obj, "cannot lock buffer" );
        if( p_buffer != NULL )
            FUNC4( p_buffer );
        FUNC11( &p_sys->lock );
        return dsresult;
    }

    if( p_buffer == NULL )
    {
        FUNC6( p_write_position, 0, l_bytes1 );
        FUNC6( p_wrap_around, 0, l_bytes2 );
    }
    else
    {
        if( p_sys->chans_to_reorder ) /* Do the channel reordering here */
            FUNC3( p_buffer->p_buffer, p_buffer->i_buffer,
                                 p_sys->chans_to_reorder, p_sys->chan_table,
                                 p_sys->format );

        FUNC5( p_write_position, p_buffer->p_buffer, l_bytes1 );
        if( p_wrap_around && l_bytes2 )
            FUNC5( p_wrap_around, p_buffer->p_buffer + l_bytes1, l_bytes2 );

        if( FUNC9( ( l_bytes1 + l_bytes2 ) < p_buffer->i_buffer ) )
            FUNC7( obj, "Buffer overrun");

        FUNC4( p_buffer );
    }

    /* Now the data has been copied, unlock the buffer */
    FUNC2( p_sys->p_dsbuffer, p_write_position, l_bytes1,
                               p_wrap_around, l_bytes2 );

    p_sys->i_write += towrite;
    p_sys->i_write %= DS_BUF_SIZE;
    p_sys->i_data += towrite;
    FUNC11( &p_sys->lock );

    return DS_OK;
}