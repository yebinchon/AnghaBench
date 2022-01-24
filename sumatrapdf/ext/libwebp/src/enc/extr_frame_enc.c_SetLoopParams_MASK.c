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
typedef  int /*<<< orphan*/  VP8Encoder ;

/* Variables and functions */
 float FUNC0 (float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,float) ; 

__attribute__((used)) static void FUNC5(VP8Encoder* const enc, float q) {
  // Make sure the quality parameter is inside valid bounds
  q = FUNC0(q, 0.f, 100.f);

  FUNC4(enc, q);      // setup segment quantizations and filters
  FUNC3(enc);            // compute segment probabilities

  FUNC2(enc);
  FUNC1(enc);
}