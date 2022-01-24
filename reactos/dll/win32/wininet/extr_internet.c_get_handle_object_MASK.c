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
typedef  int /*<<< orphan*/  object_header_t ;
typedef  size_t UINT_PTR ;
struct TYPE_3__ {scalar_t__ valid_handle; } ;
typedef  int /*<<< orphan*/  HINTERNET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  WININET_cs ; 
 TYPE_1__** handle_table ; 
 size_t handle_table_size ; 

object_header_t *FUNC4( HINTERNET hinternet )
{
    object_header_t *info = NULL;
    UINT_PTR handle = (UINT_PTR) hinternet;

    FUNC0( &WININET_cs );

    if(handle > 0 && handle < handle_table_size && handle_table[handle] && handle_table[handle]->valid_handle)
        info = FUNC3(handle_table[handle]);

    FUNC1( &WININET_cs );

    FUNC2("handle %ld -> %p\n", handle, info);

    return info;
}