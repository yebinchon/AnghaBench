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
typedef  scalar_t__ strm_string ;
typedef  int /*<<< orphan*/  strm_state ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ns ; 
 int /*<<< orphan*/  nstbl ; 

strm_state*
FUNC3(strm_string name)
{
  khiter_t k;

  if (!nstbl) return NULL;
  k = FUNC1(ns, nstbl, (intptr_t)name);
  if (k == FUNC0(nstbl)) return NULL;
  return FUNC2(nstbl, k);
}