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
struct TYPE_5__ {struct TYPE_5__* next_; int /*<<< orphan*/  unknown_; int /*<<< orphan*/  img_; int /*<<< orphan*/  alpha_; int /*<<< orphan*/  header_; } ;
typedef  TYPE_1__ WebPMuxImage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 

WebPMuxImage* FUNC2(WebPMuxImage* const wpi) {
  WebPMuxImage* next;
  if (wpi == NULL) return NULL;
  // There should be at most one chunk of header_, alpha_, img_ but we call
  // ChunkListDelete to be safe
  FUNC0(&wpi->header_);
  FUNC0(&wpi->alpha_);
  FUNC0(&wpi->img_);
  FUNC0(&wpi->unknown_);

  next = wpi->next_;
  FUNC1(wpi);
  return next;
}