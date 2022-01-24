#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  request_t ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__* vtbl; int /*<<< orphan*/  entry; int /*<<< orphan*/  handle; int /*<<< orphan*/  refs; } ;
typedef  TYPE_2__ object_header_t ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_7__ {int /*<<< orphan*/  (* destroy ) (TYPE_2__*) ;} ;
typedef  int /*<<< orphan*/  HINTERNET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  WINHTTP_CALLBACK_STATUS_HANDLE_CLOSING ; 
 scalar_t__ WINHTTP_HANDLE_TYPE_REQUEST ; 
 scalar_t__ WINHTTP_HANDLE_TYPE_SESSION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6( object_header_t *hdr )
{
    ULONG refs = FUNC0( &hdr->refs );
    FUNC1("object %p refcount = %d\n", hdr, refs);
    if (!refs)
    {
        if (hdr->type == WINHTTP_HANDLE_TYPE_REQUEST) FUNC2( (request_t *)hdr );

        FUNC4( hdr, WINHTTP_CALLBACK_STATUS_HANDLE_CLOSING, &hdr->handle, sizeof(HINTERNET) );

        FUNC1("destroying object %p\n", hdr);
        if (hdr->type != WINHTTP_HANDLE_TYPE_SESSION) FUNC3( &hdr->entry );
        hdr->vtbl->destroy( hdr );
    }
}