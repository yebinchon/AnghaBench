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
struct TYPE_3__ {int is_parsed; int /*<<< orphan*/  parsed_lock; } ;
typedef  TYPE_1__ libvlc_media_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(libvlc_media_t *media)
{
    bool parsed;

    FUNC0(&media->parsed_lock);
    parsed = media->is_parsed;
    FUNC1(&media->parsed_lock);
    return parsed;
}