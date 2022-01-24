#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  object_header_t ;
typedef  int ULONG_PTR ;
typedef  int /*<<< orphan*/  HINTERNET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  handle_cs ; 
 scalar_t__* handles ; 
 int max_handles ; 

object_header_t *FUNC4( HINTERNET hinternet )
{
    object_header_t *hdr = NULL;
    ULONG_PTR handle = (ULONG_PTR)hinternet;

    FUNC0( &handle_cs );

    if ((handle > 0) && (handle <= max_handles) && handles[handle - 1])
        hdr = FUNC3( handles[handle - 1] );

    FUNC1( &handle_cs );

    FUNC2("handle 0x%lx -> %p\n", handle, hdr);
    return hdr;
}