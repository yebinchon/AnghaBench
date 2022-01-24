#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  xmp; int /*<<< orphan*/  iccp; int /*<<< orphan*/  exif; } ;
typedef  TYPE_1__ Metadata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(Metadata* const metadata) {
  if (metadata == NULL) return;
  FUNC0(&metadata->exif);
  FUNC0(&metadata->iccp);
  FUNC0(&metadata->xmp);
}