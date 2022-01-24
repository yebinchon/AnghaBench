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
struct jpeg_decompress_struct {int /*<<< orphan*/ * client_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ fz_dctd ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct jpeg_decompress_struct *cinfo)
{
	if (cinfo->client_data)
	{
		fz_dctd *state = FUNC0(cinfo);
		FUNC1(state->ctx, cinfo->client_data);
		cinfo->client_data = NULL;
	}
}