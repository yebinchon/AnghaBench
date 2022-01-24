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
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  display_rate; int /*<<< orphan*/  num_planes; int /*<<< orphan*/  bpp; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  num_steps; int /*<<< orphan*/  num_frames; int /*<<< orphan*/  header_size; } ;
typedef  TYPE_1__ ani_header ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1( const ani_header *header )
{
    FUNC0("     header size: %d\n", header->header_size);
    FUNC0("          frames: %d\n", header->num_frames);
    FUNC0("           steps: %d\n", header->num_steps);
    FUNC0("           width: %d\n", header->width);
    FUNC0("          height: %d\n", header->height);
    FUNC0("             bpp: %d\n", header->bpp);
    FUNC0("          planes: %d\n", header->num_planes);
    FUNC0("    display rate: %d\n", header->display_rate);
    FUNC0("           flags: 0x%08x\n", header->flags);
}