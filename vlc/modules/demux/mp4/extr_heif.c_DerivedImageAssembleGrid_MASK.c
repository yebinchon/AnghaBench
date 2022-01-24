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
typedef  struct TYPE_25__   TYPE_22__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {int output_width; int output_height; int columns_minus_one; int rows_minus_one; } ;
union heif_derivation_data {TYPE_4__ ImageGrid; } ;
typedef  scalar_t__ uint32_t ;
typedef  size_t uint16_t ;
struct TYPE_24__ {TYPE_9__* (* BOXDATA ) (int /*<<< orphan*/ ) ;} ;
struct heif_private_t {TYPE_1__ current; int /*<<< orphan*/  p_root; } ;
typedef  int /*<<< orphan*/  image_handler_t ;
struct TYPE_26__ {int i_sar_num; int i_width; int i_visible_width; int i_sar_den; int i_height; int i_visible_height; } ;
struct TYPE_29__ {TYPE_2__ video; } ;
typedef  TYPE_5__ es_format_t ;
struct TYPE_30__ {scalar_t__ p_sys; } ;
typedef  TYPE_6__ demux_t ;
struct TYPE_31__ {int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_7__ block_t ;
struct TYPE_33__ {int /*<<< orphan*/  item_type; } ;
struct TYPE_32__ {scalar_t__ i_type; struct TYPE_32__* p_next; struct TYPE_32__* p_first; } ;
struct TYPE_27__ {int /*<<< orphan*/  i_to_item_id; } ;
struct TYPE_25__ {scalar_t__ i_from_item_id; size_t i_reference_count; TYPE_3__* p_references; } ;
typedef  TYPE_8__ MP4_Box_t ;

/* Variables and functions */
 TYPE_22__* FUNC0 (TYPE_8__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int,int,int) ; 
 TYPE_8__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__,union heif_derivation_data*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,scalar_t__,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_RGBA ; 
 int VLC_EGENERIC ; 
 scalar_t__ FUNC5 (char,char,char,char) ; 
 scalar_t__ VLC_SUCCESS ; 
 TYPE_7__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,char*,size_t,int,...) ; 
 int /*<<< orphan*/  p_infe ; 
 TYPE_9__* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12( demux_t *p_demux, uint32_t i_grid_item_id,
                                     es_format_t *fmt, block_t **pp_block )
{
    struct heif_private_t *p_sys = (void *) p_demux->p_sys;

    const MP4_Box_t *p_iref = FUNC2( p_sys->p_root, "meta/iref" );
    if(!p_iref)
        return VLC_EGENERIC;

    const MP4_Box_t *p_refbox;
    for( p_refbox = p_iref->p_first; p_refbox; p_refbox = p_refbox->p_next )
    {
        if( p_refbox->i_type == FUNC5('d','i','m','g') &&
            FUNC0(p_refbox)->i_from_item_id == i_grid_item_id )
            break;
    }

    if(!p_refbox)
        return VLC_EGENERIC;

    union heif_derivation_data derivation_data;
    if( FUNC3( p_demux,
                            p_sys->current.BOXDATA(p_infe)->item_type,
                            i_grid_item_id, &derivation_data ) != VLC_SUCCESS )
        return VLC_EGENERIC;

    FUNC10(p_demux,"%ux%upx image %ux%u tiles composition",
            derivation_data.ImageGrid.output_width,
            derivation_data.ImageGrid.output_height,
            derivation_data.ImageGrid.columns_minus_one + 1,
            derivation_data.ImageGrid.columns_minus_one + 1);

    image_handler_t *handler = FUNC8( p_demux );
    if( !handler )
        return VLC_EGENERIC;

    block_t *p_block = FUNC6( derivation_data.ImageGrid.output_width *
                                    derivation_data.ImageGrid.output_height * 4 );
    if( !p_block )
        return VLC_EGENERIC;
    *pp_block = p_block;

    FUNC7( fmt, VIDEO_ES, VLC_CODEC_RGBA );
    fmt->video.i_sar_num =
    fmt->video.i_width =
    fmt->video.i_visible_width = derivation_data.ImageGrid.output_width;
    fmt->video.i_sar_den =
    fmt->video.i_height =
    fmt->video.i_visible_height = derivation_data.ImageGrid.output_height;

    for( uint16_t i=0; i<FUNC0(p_refbox)->i_reference_count; i++ )
    {
        FUNC10( p_demux, "Loading tile %d/%d", i,
                 (derivation_data.ImageGrid.rows_minus_one + 1) *
                 (derivation_data.ImageGrid.columns_minus_one + 1) );
        FUNC1( p_demux, handler,
                       FUNC0(p_refbox)->p_references[i].i_to_item_id,
                       p_block->p_buffer, i,
                       derivation_data.ImageGrid.columns_minus_one + 1,
                       derivation_data.ImageGrid.output_width,
                       derivation_data.ImageGrid.output_height );
    }

    FUNC4( p_demux, i_grid_item_id, fmt, NULL );

    FUNC9( handler );

    return VLC_SUCCESS;
}