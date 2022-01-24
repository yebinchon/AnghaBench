#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t libvlc_meta_t ;
struct TYPE_4__ {int /*<<< orphan*/  p_input_item; } ;
typedef  TYPE_1__ libvlc_media_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * libvlc_to_vlc_meta ; 

void FUNC2( libvlc_media_t *p_md, libvlc_meta_t e_meta, const char *psz_value )
{
    FUNC0( p_md );
    FUNC1( p_md->p_input_item, libvlc_to_vlc_meta[e_meta], psz_value );
}