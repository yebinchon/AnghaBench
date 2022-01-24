#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int width; float height; TYPE_2__* stats; } ;
typedef  TYPE_1__ WebPPicture ;
struct TYPE_6__ {int coded_size; float* PSNR; } ;
typedef  TYPE_2__ WebPAuxStats ;
typedef  int /*<<< orphan*/  W_CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const* const,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,float) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(const WebPPicture* const pic,
                                   int short_output,
                                   const char* const file_name) {
  const WebPAuxStats* const stats = pic->stats;
  if (short_output) {
    FUNC2(stderr, "%7d %2.2f\n", stats->coded_size, stats->PSNR[3]);
  } else {
    FUNC1(stderr, "File:      %s\n", (const W_CHAR*)file_name);
    FUNC2(stderr, "Dimension: %d x %f\n", pic->width, pic->height);
    FUNC2(stderr, "Output:    %d bytes (%.2f bpp)\n", stats->coded_size,
            8.f * stats->coded_size / pic->width / pic->height);
    FUNC0(stats, "ARGB");
  }
}