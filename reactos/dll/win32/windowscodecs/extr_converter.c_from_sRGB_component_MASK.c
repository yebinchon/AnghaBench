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

/* Variables and functions */
 float FUNC0 (float,float) ; 

__attribute__((used)) static inline float FUNC1(float f)
{
    if (f <= 0.04045f) return f / 12.92f;
    return FUNC0((f + 0.055f) / 1.055f, 2.4f);
}