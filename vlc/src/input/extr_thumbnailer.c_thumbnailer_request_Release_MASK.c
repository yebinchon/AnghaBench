#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  input_item; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; TYPE_1__ params; scalar_t__ input_thread; } ;
typedef  TYPE_2__ vlc_thumbnailer_request_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( void* data )
{
    vlc_thumbnailer_request_t* request = data;
    if ( request->input_thread )
        FUNC1( request->input_thread );

    FUNC2( request->params.input_item );
    FUNC3( &request->lock );
    FUNC0( request );
}