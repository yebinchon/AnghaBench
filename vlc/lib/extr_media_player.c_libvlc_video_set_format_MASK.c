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
typedef  int /*<<< orphan*/  libvlc_media_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 

void FUNC2( libvlc_media_player_t *mp, const char *chroma,
                              unsigned width, unsigned height, unsigned pitch )
{
    FUNC1( mp, "vmem-chroma", chroma );
    FUNC0( mp, "vmem-width", width );
    FUNC0( mp, "vmem-height", height );
    FUNC0( mp, "vmem-pitch", pitch );
}