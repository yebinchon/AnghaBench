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
typedef  int /*<<< orphan*/  vorb ;
typedef  int uint32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32 FUNC1(vorb *f)
{
   uint32 x;
   x = FUNC0(f);
   x += FUNC0(f) << 8;
   x += FUNC0(f) << 16;
   x += (uint32) FUNC0(f) << 24;
   return x;
}