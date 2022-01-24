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
struct TYPE_3__ {int /*<<< orphan*/  unknown_; int /*<<< orphan*/  xmp_; int /*<<< orphan*/  exif_; int /*<<< orphan*/  anim_; int /*<<< orphan*/  iccp_; int /*<<< orphan*/  vp8x_; int /*<<< orphan*/  images_; } ;
typedef  TYPE_1__ WebPMux ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(WebPMux* const mux) {
  FUNC2(mux != NULL);
  FUNC1(&mux->images_);
  FUNC0(&mux->vp8x_);
  FUNC0(&mux->iccp_);
  FUNC0(&mux->anim_);
  FUNC0(&mux->exif_);
  FUNC0(&mux->xmp_);
  FUNC0(&mux->unknown_);
}