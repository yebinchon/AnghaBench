#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * handle; int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ object_header_t ;
typedef  int ULONG_PTR ;
typedef  int /*<<< orphan*/ * HINTERNET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int HANDLE_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  handle_cs ; 
 TYPE_1__** handles ; 
 TYPE_1__** FUNC4 (int) ; 
 TYPE_1__** FUNC5 (TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int max_handles ; 
 int next_handle ; 

HINTERNET FUNC7( object_header_t *hdr )
{
    object_header_t **p;
    ULONG_PTR handle, num;

    FUNC6( &hdr->children );
    hdr->handle = NULL;

    FUNC1( &handle_cs );
    if (!max_handles)
    {
        num = HANDLE_CHUNK_SIZE;
        if (!(p = FUNC4( sizeof(ULONG_PTR) * num ))) goto end;
        handles = p;
        max_handles = num;
    }
    if (max_handles == next_handle)
    {
        num = max_handles * 2;
        if (!(p = FUNC5( handles, sizeof(ULONG_PTR) * num ))) goto end;
        handles = p;
        max_handles = num;
    }
    handle = next_handle;
    if (handles[handle]) FUNC0("handle isn't free but should be\n");

    handles[handle] = FUNC3( hdr );
    hdr->handle = (HINTERNET)(handle + 1);
    while ((next_handle < max_handles) && handles[next_handle]) next_handle++;

end:
    FUNC2( &handle_cs );
    return hdr->handle;
}