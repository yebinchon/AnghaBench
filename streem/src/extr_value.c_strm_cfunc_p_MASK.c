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
typedef  int /*<<< orphan*/  strm_value ;

/* Variables and functions */
 scalar_t__ STRM_TAG_CFUNC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(strm_value v)
{
  return FUNC0(v) == STRM_TAG_CFUNC;
}