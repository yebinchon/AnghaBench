#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_window_t ;
struct TYPE_5__ {void* sys; int /*<<< orphan*/ * cbs; } ;
typedef  TYPE_1__ vout_window_owner_t ;
struct TYPE_6__ {int is_decorated; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_2__ vout_window_cfg_t ;
typedef  int /*<<< orphan*/  vout_display_cfg_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  video_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  vlc_vidsplit_window_cbs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static vout_window_t *FUNC4(vlc_object_t *obj,
    const vout_display_cfg_t *restrict vdcfg,
    const video_format_t *restrict source, void *sys)
{
    vout_window_cfg_t cfg = {
        .is_decorated = true,
    };
    vout_window_owner_t owner = {
        .cbs = &vlc_vidsplit_window_cbs,
        .sys = sys,
    };

    FUNC0(&cfg.width, &cfg.height, source,
                                       vdcfg);

    vout_window_t *window = FUNC3(obj, NULL, &owner);
    if (window != NULL) {
        if (FUNC2(window, &cfg)) {
            FUNC1(window);
            window = NULL;
        }
    }
    return window;
}