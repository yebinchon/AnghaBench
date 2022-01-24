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
typedef  int guint ;
typedef  int /*<<< orphan*/  decoder_t ;
struct TYPE_3__ {int /*<<< orphan*/  b_use_pool; int /*<<< orphan*/ * p_dec; int /*<<< orphan*/  p_allocator; } ;
typedef  TYPE_1__ GstVlcVideoSink ;
typedef  int /*<<< orphan*/  GstAllocator ;
typedef  int /*<<< orphan*/  GValue ;
typedef  int /*<<< orphan*/  GParamSpec ;
typedef  int /*<<< orphan*/  GObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
#define  PROP_ALLOCATOR 130 
#define  PROP_ID 129 
#define  PROP_USE_POOL 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC8( GObject *p_object, guint i_prop_id,
        const GValue *p_value, GParamSpec *p_pspec )
{
    FUNC2( p_pspec );

    GstVlcVideoSink *p_vsink = FUNC1( p_object );

    switch( i_prop_id )
    {
        case PROP_ALLOCATOR:
        {
            GstAllocator *p_allocator = (GstAllocator*) FUNC4(
                    p_value );
            if( FUNC0( p_allocator ))
            {
                if( p_vsink->p_allocator )
                    FUNC6( p_vsink->p_allocator );
                p_vsink->p_allocator = FUNC5( p_allocator );
            } else
                FUNC7( p_vsink->p_dec, "Invalid Allocator set");
        }
        break;

        case PROP_ID:
        {
            p_vsink->p_dec = (decoder_t*) FUNC4( p_value );
        }
        break;

        case PROP_USE_POOL:
        {
            p_vsink->b_use_pool = FUNC3( p_value );
        }
        break;

        default:
        break;
    }
}