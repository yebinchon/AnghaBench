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
struct TYPE_5__ {int /*<<< orphan*/  p_input_item; int /*<<< orphan*/  p_libvlc_instance; } ;
typedef  TYPE_1__ libvlc_media_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

libvlc_media_t *
FUNC1( libvlc_media_t *p_md_orig )
{
    return FUNC0(
        p_md_orig->p_libvlc_instance, p_md_orig->p_input_item );
}