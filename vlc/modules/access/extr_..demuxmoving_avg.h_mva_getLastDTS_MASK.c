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
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct mva_packet_s {int /*<<< orphan*/  dts; } ;
struct moving_average_s {int dummy; } ;

/* Variables and functions */
 struct mva_packet_s* FUNC0 (struct moving_average_s*) ; 

__attribute__((used)) static vlc_tick_t FUNC1(struct moving_average_s *m)
{
    struct mva_packet_s *p = FUNC0(m);
    return p ? p->dts : 0;
}