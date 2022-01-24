#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gsize ;
typedef  scalar_t__ gboolean ;
struct TYPE_9__ {int /*<<< orphan*/  info; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; } ;
struct TYPE_7__ {int /*<<< orphan*/  p_dec; scalar_t__ b_use_pool; } ;
typedef  TYPE_1__ GstVlcVideoSink ;
typedef  TYPE_2__ GstVideoInfo ;
typedef  int /*<<< orphan*/  GstQuery ;
typedef  int /*<<< orphan*/  GstCaps ;
typedef  int /*<<< orphan*/  GstBufferPool ;
typedef  int /*<<< orphan*/  GstBaseSink ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GST_VIDEO_META_API_TYPE ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static gboolean FUNC10( GstBaseSink* p_bsink,
        GstQuery* p_query )
{
    GstVlcVideoSink *p_vsink = FUNC2( p_bsink );
    GstCaps *p_caps;
    gboolean b_need_pool;
    GstBufferPool* p_pool = NULL;
    gsize i_size;

    FUNC6 (p_query, &p_caps, &b_need_pool);
    if( p_caps == NULL )
        goto no_caps;

    if( p_vsink->b_use_pool && b_need_pool )
    {
        GstVideoInfo info;

        if( !FUNC7( &info, p_caps ))
            goto invalid_caps;

        p_pool = (GstBufferPool*) FUNC8( p_vsink,
                p_caps, info.size, 2 );
        if( p_pool == NULL )
            goto no_pool;

        i_size = FUNC0( &FUNC1( p_pool )->info);
    }

    if( p_pool )
    {
        /* we need at least 2 buffer because we hold on to the last one */
        FUNC5( p_query, p_pool, i_size, 2, 0);
        FUNC3 (p_pool);
    }

    /* we support various metadata */
    FUNC4( p_query, GST_VIDEO_META_API_TYPE, NULL );

    return TRUE;

    /* ERRORS */
no_pool:
    {
        FUNC9( p_vsink->p_dec, "failed to create the pool" );
        return FALSE;
    }
no_caps:
    {
        FUNC9( p_vsink->p_dec, "no caps in allocation query" );
        return FALSE;
    }
invalid_caps:
    {
        FUNC9( p_vsink->p_dec, "invalid caps in allocation query" );
        return FALSE;
    }
}