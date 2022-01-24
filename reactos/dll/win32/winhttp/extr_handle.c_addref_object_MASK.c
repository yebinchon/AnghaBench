#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  refs; } ;
typedef  TYPE_1__ object_header_t ;
typedef  int /*<<< orphan*/  ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 

object_header_t *FUNC2( object_header_t *hdr )
{
    ULONG refs = FUNC0( &hdr->refs );
    FUNC1("%p -> refcount = %d\n", hdr, refs);
    return hdr;
}