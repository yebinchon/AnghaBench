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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 

void FUNC2( libvlc_media_player_t *mp,
    void *(*lock_cb) (void *, void **),
    void (*unlock_cb) (void *, void *, void *const *),
    void (*display_cb) (void *, void *),
    void *opaque )
{
    FUNC0( mp, "vmem-lock", lock_cb );
    FUNC0( mp, "vmem-unlock", unlock_cb );
    FUNC0( mp, "vmem-display", display_cb );
    FUNC0( mp, "vmem-data", opaque );
    FUNC1( mp, "dec-dev", "none" );
    FUNC1( mp, "vout", "vmem" );
    FUNC1( mp, "window", "dummy" );
}