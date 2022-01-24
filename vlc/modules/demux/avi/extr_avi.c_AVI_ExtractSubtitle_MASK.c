#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_11__ ;
typedef  struct TYPE_23__   TYPE_10__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  input_attachment_t ;
struct TYPE_28__ {int i_length; scalar_t__ i_pos; int /*<<< orphan*/  i_fourcc; } ;
typedef  TYPE_4__ idx1_entry_t ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;
struct TYPE_29__ {int /*<<< orphan*/  s; TYPE_6__* p_sys; } ;
typedef  TYPE_5__ demux_t ;
struct TYPE_30__ {int /*<<< orphan*/  attachment; int /*<<< orphan*/  i_attachment; int /*<<< orphan*/  b_seekable; } ;
typedef  TYPE_6__ demux_sys_t ;
struct TYPE_31__ {char* p_buffer; } ;
typedef  TYPE_7__ block_t ;
struct TYPE_27__ {TYPE_2__* std; TYPE_1__* super; } ;
struct TYPE_33__ {scalar_t__ i_indextype; int i_entriesinuse; scalar_t__ i_indexsubtype; TYPE_3__ idx; scalar_t__ i_baseoffset; } ;
struct TYPE_32__ {TYPE_9__ indx; } ;
typedef  TYPE_8__ avi_chunk_t ;
typedef  int /*<<< orphan*/  avi_chunk_list_t ;
typedef  TYPE_9__ avi_chunk_indx_t ;
struct TYPE_23__ {unsigned int i_entry_count; TYPE_4__* entry; } ;
typedef  TYPE_10__ avi_chunk_idx1_t ;
struct TYPE_24__ {scalar_t__ p_str; } ;
typedef  TYPE_11__ avi_chunk_STRING_t ;
struct TYPE_26__ {int i_size; scalar_t__ i_offset; } ;
struct TYPE_25__ {scalar_t__ i_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVIFOURCC_indx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 TYPE_9__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ *) ; 
 scalar_t__ AVI_INDEX_OF_CHUNKS ; 
 scalar_t__ AVI_INDEX_OF_INDEXES ; 
 scalar_t__ FUNC3 (TYPE_5__*,TYPE_10__**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int*,int*) ; 
 char* FUNC5 (scalar_t__) ; 
 char* FUNC6 (char*,char const*,unsigned int const) ; 
 unsigned int FUNC7 (char const*) ; 
 int FUNC8 (char const*) ; 
 int SPU_ES ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/ * FUNC16 (char*,char*,char*,char const*,unsigned int const) ; 
 TYPE_7__* FUNC17 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC19( demux_t *p_demux,
                                 unsigned int i_stream,
                                 avi_chunk_list_t *p_strl,
                                 avi_chunk_STRING_t *p_strn )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_block = NULL;
    input_attachment_t *p_attachment = NULL;
    char *psz_description = NULL;
    avi_chunk_indx_t *p_indx = NULL;

    if( !p_sys->b_seekable )
        goto exit;

    p_indx = FUNC1( p_strl, AVIFOURCC_indx, 0, false );
    avi_chunk_t ck;
    int64_t  i_position;
    unsigned i_size;
    if( p_indx )
    {
        if( p_indx->i_indextype == AVI_INDEX_OF_INDEXES &&
            p_indx->i_entriesinuse > 0 )
        {
            if( FUNC18( p_demux->s, p_indx->idx.super[0].i_offset ) ||
                FUNC2( p_demux->s, &ck, NULL  ) )
                goto exit;
            p_indx = &ck.indx;
        }

        if( p_indx->i_indextype != AVI_INDEX_OF_CHUNKS ||
            p_indx->i_entriesinuse != 1 ||
            p_indx->i_indexsubtype != 0 )
            goto exit;

        i_position  = p_indx->i_baseoffset +
                      p_indx->idx.std[0].i_offset - 8;
        i_size      = (p_indx->idx.std[0].i_size & 0x7fffffff) + 8;
    }
    else
    {
        avi_chunk_idx1_t *p_idx1;
        uint64_t         i_offset;

        if( FUNC3( p_demux, &p_idx1, &i_offset ) )
            goto exit;

        i_size = 0;
        for( unsigned i = 0; i < p_idx1->i_entry_count; i++ )
        {
            const idx1_entry_t *e = &p_idx1->entry[i];
            enum es_format_category_e i_cat;
            unsigned i_stream_idx;

            FUNC4( e->i_fourcc, &i_stream_idx, &i_cat );
            if( i_cat == SPU_ES && i_stream_idx == i_stream )
            {
                i_position = e->i_pos + i_offset;
                i_size     = e->i_length + 8;
                break;
            }
        }
        if( i_size <= 0 )
            goto exit;
    }

    /* */
    if( i_size > 10000000 )
    {
        FUNC14( p_demux, "Attached subtitle too big: %u", i_size );
        goto exit;
    }

    if( FUNC18( p_demux->s, i_position ) )
        goto exit;
    p_block = FUNC17( p_demux->s, i_size );
    if( !p_block )
        goto exit;

    /* Parse packet header */
    const uint8_t *p = p_block->p_buffer;
    if( i_size < 8 || p[2] != 't' || p[3] != 'x' )
        goto exit;
    p += 8;
    i_size -= 8;

    /* Parse subtitle chunk header */
    if( i_size < 11 || FUNC13( p, "GAB2", 4 ) ||
        p[4] != 0x00 || FUNC8( &p[5] ) != 0x2 )
        goto exit;
    const unsigned i_name = FUNC7( &p[7] );
    if( 11 + i_size <= i_name )
        goto exit;
    if( i_name > 0 )
        psz_description = FUNC6( "UTF-16LE", &p[11], i_name );
    p += 11 + i_name;
    i_size -= 11 + i_name;
    if( i_size < 6 || FUNC8( &p[0] ) != 0x04 )
        goto exit;
    const unsigned i_payload = FUNC7( &p[2] );
    if( i_size < 6 + i_payload || i_payload <= 0 )
        goto exit;
    p += 6;
    i_size -= 6;

    if( !psz_description )
        psz_description = p_strn && p_strn->p_str ? FUNC5( p_strn->p_str ) : NULL;
    char *psz_name;
    if( FUNC10( &psz_name, "subtitle%d.srt", p_sys->i_attachment ) <= 0 )
        psz_name = NULL;
    p_attachment = FUNC16( psz_name,
                                             "application/x-srt",
                                             psz_description,
                                             p, i_payload );
    if( p_attachment )
        FUNC9( p_sys->i_attachment, p_sys->attachment, p_attachment );
    FUNC12( psz_name );

exit:
    FUNC12( psz_description );

    if( p_block )
        FUNC11( p_block );

    if( p_attachment )
        FUNC14( p_demux, "Loaded an embedded subtitle" );
    else
        FUNC15( p_demux, "Failed to load an embedded subtitle" );

    if( p_indx == &ck.indx )
        FUNC0( p_demux->s, &ck );
}