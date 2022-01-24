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
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_CMD_BEGIN_LAYER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, fz_device *dev, const char *layer_name)
{
	FUNC0(
		ctx,
		dev,
		FZ_CMD_BEGIN_LAYER,
		0, /* flags */
		NULL,
		NULL, /* path */
		NULL, /* color */
		NULL, /* colorspace */
		NULL, /* alpha */
		NULL,
		NULL, /* stroke */
		layer_name, /* private_data */
		1+FUNC1(layer_name)); /* private_data_len */
}