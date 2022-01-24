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
struct TYPE_5__ {int /*<<< orphan*/  psz_name; int /*<<< orphan*/  p_cfg; int /*<<< orphan*/  p_module; } ;
typedef  TYPE_1__ vlc_renderer_discovery_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(vlc_renderer_discovery_t *p_rd)
{
    FUNC2(p_rd, p_rd->p_module);
    FUNC0(p_rd->p_cfg);
    FUNC1(p_rd->psz_name);
    FUNC3(p_rd);
}