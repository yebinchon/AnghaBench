#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mode3buf; int /*<<< orphan*/  mode2buf; int /*<<< orphan*/  prev; } ;
typedef  TYPE_1__ mono_pcl_band_writer ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_band_writer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(fz_context *ctx, fz_band_writer *writer_)
{
	mono_pcl_band_writer *writer = (mono_pcl_band_writer *)writer_;

	FUNC0(ctx, writer->prev);
	FUNC0(ctx, writer->mode2buf);
	FUNC0(ctx, writer->mode3buf);
}