#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* p; } ;
typedef  TYPE_2__ picture_t ;
struct TYPE_4__ {int* p_pixels; int i_pitch; } ;

/* Variables and functions */

__attribute__((used)) static inline void FUNC0(picture_t *picture, int x, int y, int value)
{
    picture->p->p_pixels[y * picture->p->i_pitch + x] = value;
}