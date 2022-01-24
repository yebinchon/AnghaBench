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
typedef  int /*<<< orphan*/  VP8Io ;
typedef  int /*<<< orphan*/  VP8Decoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(VP8Decoder* const dec, VP8Io* const io) {
  if (!FUNC2(dec)) return 0;  // call first. Sets dec->num_caches_.
  if (!FUNC0(dec)) return 0;
  FUNC1(dec, io);
  FUNC3();  // Init critical function pointers and look-up tables.
  return 1;
}