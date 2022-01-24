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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  libvlc_media_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 

void FUNC3( libvlc_media_player_t *p_mi,
                                      uint32_t drawable )
{
    FUNC0 (p_mi != NULL);

    FUNC2 (p_mi, "dec-dev", "");
    FUNC2 (p_mi, "vout", "");
    FUNC2 (p_mi, "window", drawable ? "embed-xid,any" : "");
    FUNC1 (p_mi, "drawable-xid", drawable);
}