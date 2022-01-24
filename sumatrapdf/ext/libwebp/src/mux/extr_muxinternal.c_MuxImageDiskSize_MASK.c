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
struct TYPE_3__ {int /*<<< orphan*/ * unknown_; int /*<<< orphan*/ * img_; int /*<<< orphan*/ * alpha_; int /*<<< orphan*/ * header_; } ;
typedef  TYPE_1__ WebPMuxImage ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

size_t FUNC2(const WebPMuxImage* const wpi) {
  size_t size = 0;
  if (wpi->header_ != NULL) size += FUNC0(wpi->header_);
  if (wpi->alpha_ != NULL) size += FUNC0(wpi->alpha_);
  if (wpi->img_ != NULL) size += FUNC0(wpi->img_);
  if (wpi->unknown_ != NULL) size += FUNC1(wpi->unknown_);
  return size;
}