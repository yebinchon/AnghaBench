#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ guint ;
struct TYPE_2__ {int /*<<< orphan*/ * p_plane; int /*<<< orphan*/ * p_pic; } ;
typedef  int /*<<< orphan*/  GstVlcPicturePlaneAllocator ;
typedef  TYPE_1__ GstVlcPicturePlane ;
typedef  int /*<<< orphan*/  GstBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(
    GstVlcPicturePlaneAllocator *p_allocator, GstBuffer *p_buffer )
{
    FUNC0( p_allocator );

    GstVlcPicturePlane* p_mem =
        (GstVlcPicturePlane*) FUNC2( p_buffer, 0 );
    guint i_plane;

    if( p_mem->p_pic )
    {
        FUNC3( p_mem->p_pic );

        for( i_plane = 0; i_plane < FUNC1( p_buffer );
                i_plane++ )
        {
            p_mem = (GstVlcPicturePlane*) FUNC2 ( p_buffer,
                    i_plane );
            p_mem->p_pic = NULL;
            p_mem->p_plane = NULL;
        }
    }
}