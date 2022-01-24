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
struct TYPE_5__ {int /*<<< orphan*/  p_header_extension_data; } ;
struct TYPE_4__ {TYPE_2__ header_extension; } ;
typedef  TYPE_1__ asf_object_t ;
typedef  TYPE_2__ asf_object_header_extension_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1( asf_object_t *p_obj )
{
    asf_object_header_extension_t *p_he = &p_obj->header_extension;

    FUNC0( p_he->p_header_extension_data );
}