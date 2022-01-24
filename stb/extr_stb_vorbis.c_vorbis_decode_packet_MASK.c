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
struct TYPE_5__ {scalar_t__ mode_config; } ;
typedef  TYPE_1__ vorb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int*,int*,int*,int*,int*) ; 
 int FUNC1 (TYPE_1__*,int*,scalar_t__,int,int,int,int,int*) ; 

__attribute__((used)) static int FUNC2(vorb *f, int *len, int *p_left, int *p_right)
{
   int mode, left_end, right_end;
   if (!FUNC0(f, p_left, &left_end, p_right, &right_end, &mode)) return 0;
   return FUNC1(f, len, f->mode_config + mode, *p_left, left_end, *p_right, right_end, p_left);
}