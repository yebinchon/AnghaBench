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
typedef  int /*<<< orphan*/  vlc_renderer_item_t ;
typedef  int /*<<< orphan*/  libvlc_renderer_item_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 

int
FUNC1( const libvlc_renderer_item_t *p_item )
{
    return FUNC0( (const vlc_renderer_item_t *) p_item );
}