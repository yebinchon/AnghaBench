#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gsize ;
typedef  int /*<<< orphan*/  gint ;
struct TYPE_3__ {int /*<<< orphan*/  p_dec; int /*<<< orphan*/  p_allocator; } ;
typedef  TYPE_1__ GstVlcVideoSink ;
typedef  int /*<<< orphan*/  GstVlcVideoPool ;
typedef  int /*<<< orphan*/  GstStructure ;
typedef  int /*<<< orphan*/  GstCaps ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GstVlcVideoPool* FUNC6(
        GstVlcVideoSink *p_vsink, GstCaps *p_caps, gsize i_size, gint i_min )
{
    GstVlcVideoPool *p_pool;
    GstStructure *p_config;

    p_pool = FUNC5( p_vsink->p_allocator, p_vsink->p_dec );

    p_config = FUNC2( FUNC0( p_pool ));
    FUNC1( p_config, p_caps, i_size, i_min, 0);

    if( !FUNC3( FUNC0( p_pool ), p_config ))
        goto config_failed;

    return p_pool;

config_failed:
    {
        FUNC4 (p_pool);
        return NULL;
    }
}