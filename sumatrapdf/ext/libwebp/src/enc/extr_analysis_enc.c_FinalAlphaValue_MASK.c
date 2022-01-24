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
 int MAX_ALPHA ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(int alpha) {
  alpha = MAX_ALPHA - alpha;
  return FUNC0(alpha, 0, MAX_ALPHA);
}