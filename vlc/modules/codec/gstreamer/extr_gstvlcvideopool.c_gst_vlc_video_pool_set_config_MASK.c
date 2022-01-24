#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  guint ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_12__ {int /*<<< orphan*/  (* set_config ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_11__ {int i_extra_picture_buffers; } ;
struct TYPE_10__ {int /*<<< orphan*/  size; } ;
struct TYPE_9__ {int b_add_metavideo; TYPE_3__* p_dec; int /*<<< orphan*/  align; TYPE_2__ info; int /*<<< orphan*/  p_caps; void* b_need_aligned; scalar_t__ p_allocator; } ;
typedef  TYPE_1__ GstVlcVideoPool ;
typedef  TYPE_2__ GstVideoInfo ;
typedef  int /*<<< orphan*/  GstVideoAlignment ;
typedef  int /*<<< orphan*/  GstStructure ;
typedef  int /*<<< orphan*/  GstCaps ;
typedef  int /*<<< orphan*/  GstBufferPool ;
typedef  int /*<<< orphan*/  GstAllocator ;
typedef  int /*<<< orphan*/  GstAllocationParams ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_8__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GST_BUFFER_POOL_OPTION_VIDEO_ALIGNMENT ; 
 int /*<<< orphan*/  GST_BUFFER_POOL_OPTION_VIDEO_META ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  parent_class ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static gboolean FUNC20( GstBufferPool *p_pool,
        GstStructure *p_config )
{
    GstVlcVideoPool *p_vpool = FUNC2( p_pool );
    GstCaps *p_caps;
    GstVideoInfo info;
    GstVideoAlignment align;
    guint size, min_buffers, max_buffers;
    GstAllocator *p_allocator;
    GstAllocationParams params;

    if( !FUNC4( p_config, &p_caps, &size,
                &min_buffers, &max_buffers ))
        goto wrong_config;
    if( p_caps == NULL )
        goto no_caps;

    FUNC3( p_config, &p_allocator, &params );
    if( p_allocator )
    {
        if( !FUNC1( p_allocator ))
            goto unsupported_allocator;
        else
        {
            if( p_vpool->p_allocator )
                FUNC13( p_vpool->p_allocator );
            p_vpool->p_allocator = FUNC12 ( p_allocator );
        }
    }

    /* now parse the caps from the config */
    if ( !FUNC15( &info, p_caps ))
        goto wrong_caps;

    /* enable metadata based on config of the pool */
    p_vpool->b_add_metavideo =
        FUNC6( p_config,
                GST_BUFFER_POOL_OPTION_VIDEO_META );

    p_vpool->b_need_aligned =
        FUNC6( p_config,
                GST_BUFFER_POOL_OPTION_VIDEO_ALIGNMENT );

    if( p_vpool->b_need_aligned )
    {
        p_vpool->b_add_metavideo = true;
        FUNC5( p_config, &align );
    }
    else
         FUNC14( &align );

    // FIXME: the gst decoders' min buffers may not be equal to the number
    // of buffers it actually allocates. Also the max buffers here could
    // be zero. Moreover even if it was right, need to check if it can be
    // communicated to the vout (including the dpb_size it calculates in
    // src/input/decoder.c).
    p_vpool->p_dec->i_extra_picture_buffers = 16;

    if( !FUNC16( p_vpool->p_allocator,
                &info, &align, p_caps))
        goto unknown_format;

    if( p_vpool->b_need_aligned )
        FUNC8( p_config, &align);

    if( p_vpool->p_caps )
        FUNC11( p_vpool->p_caps );
    p_vpool->p_caps = FUNC9( p_caps );
    p_vpool->info = info;
    p_vpool->align = align;

    FUNC17( p_vpool->p_dec, "setting the following config on the pool: %s, \
            size: %lu, min buffers: %u, max buffers: %u", FUNC10( p_caps ),
            info.size, min_buffers, max_buffers );

    FUNC7( p_config, p_caps, info.size,
            min_buffers, max_buffers );

    return FUNC0 (parent_class)->set_config( p_pool, p_config );

    /* ERRORS */
wrong_config:
    {
        FUNC18(p_vpool->p_dec, "wrong pool config" );
        return FALSE;
    }
no_caps:
    {
        FUNC18(p_vpool->p_dec, "no input caps in config" );
        return FALSE;
    }
wrong_caps:
    {
        FUNC18(p_vpool->p_dec, "invalid caps" );
        return FALSE;
    }
unknown_format:
    {
        FUNC18(p_vpool->p_dec, "format unsupported" );
        return FALSE;
    }
unsupported_allocator:
    {
        FUNC18(p_vpool->p_dec, "allocator unsupported" );
        return FALSE;
    }
}