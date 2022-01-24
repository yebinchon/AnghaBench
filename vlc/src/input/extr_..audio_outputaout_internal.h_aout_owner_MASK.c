#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  audio_output_t ;
typedef  int /*<<< orphan*/  aout_owner_t ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;
typedef  TYPE_1__ aout_instance_t ;

/* Variables and functions */

__attribute__((used)) static inline aout_owner_t *FUNC0 (audio_output_t *aout)
{
    return &((aout_instance_t *)aout)->owner;
}