
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_17__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_18__ {struct TYPE_18__* psz_indexPath; struct TYPE_18__* psz_indexUrl; scalar_t__ i_numsegs; scalar_t__ b_delsegs; int segments_t; struct TYPE_18__* key_uri; int aes_ctx; TYPE_4__* ongoing_segment; TYPE_4__* full_segments; TYPE_4__** ongoing_segment_end; TYPE_4__** full_segments_end; } ;
typedef TYPE_2__ sout_access_out_sys_t ;
struct TYPE_19__ {scalar_t__ psz_filename; int i_segment_number; } ;
typedef TYPE_3__ output_segment_t ;
struct TYPE_20__ {struct TYPE_20__* p_next; } ;
typedef TYPE_4__ block_t ;


 int Write (TYPE_1__*,TYPE_4__*) ;
 int block_ChainLastAppend (TYPE_4__***,TYPE_4__*) ;
 int block_ChainRelease (TYPE_4__*) ;
 int closeCurrentSegment (TYPE_1__*,TYPE_2__*,int) ;
 int destroySegment (TYPE_3__*) ;
 int free (TYPE_2__*) ;
 int gcry_cipher_close (int ) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_array_count (int *) ;
 TYPE_3__* vlc_array_item_at_index (int *,int ) ;
 int vlc_array_remove (int *,int ) ;
 int vlc_unlink (scalar_t__) ;
 scalar_t__ writeSegment (TYPE_1__*) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_access_out_t *p_access = (sout_access_out_t*)p_this;
    sout_access_out_sys_t *p_sys = p_access->p_sys;

    if( p_sys->ongoing_segment )
        block_ChainLastAppend( &p_sys->full_segments_end, p_sys->ongoing_segment );
    p_sys->ongoing_segment = ((void*)0);
    p_sys->ongoing_segment_end = &p_sys->ongoing_segment;

    block_t *output_block = p_sys->full_segments;
    p_sys->full_segments = ((void*)0);
    p_sys->full_segments_end = &p_sys->full_segments;

    while( output_block )
    {
        block_t *p_next = output_block->p_next;
        output_block->p_next = ((void*)0);

        Write( p_access, output_block );
        output_block = p_next;
    }
    if( p_sys->ongoing_segment )
    {
        block_ChainLastAppend( &p_sys->full_segments_end, p_sys->ongoing_segment );
        p_sys->ongoing_segment = ((void*)0);
        p_sys->ongoing_segment_end = &p_sys->ongoing_segment;
    }

    ssize_t writevalue = writeSegment( p_access );
    msg_Dbg( p_access, "Writing.. %zd", writevalue );
    if( unlikely( writevalue < 0 ) )
    {
        if( p_sys->full_segments )
            block_ChainRelease( p_sys->full_segments );
        if( p_sys->ongoing_segment )
            block_ChainRelease( p_sys->ongoing_segment );
    }

    closeCurrentSegment( p_access, p_sys, 1 );

    if( p_sys->key_uri )
    {
        gcry_cipher_close( p_sys->aes_ctx );
        free( p_sys->key_uri );
    }

    while( vlc_array_count( &p_sys->segments_t ) > 0 )
    {
        output_segment_t *segment = vlc_array_item_at_index( &p_sys->segments_t, 0 );
        vlc_array_remove( &p_sys->segments_t, 0 );
        if( p_sys->b_delsegs && p_sys->i_numsegs && segment->psz_filename )
        {
            msg_Dbg( p_access, "Removing segment number %d name %s", segment->i_segment_number, segment->psz_filename );
            vlc_unlink( segment->psz_filename );
        }

        destroySegment( segment );
    }

    free( p_sys->psz_indexUrl );
    free( p_sys->psz_indexPath );
    free( p_sys );

    msg_Dbg( p_access, "livehttp access output closed" );
}
