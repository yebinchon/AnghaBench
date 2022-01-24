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
typedef  int /*<<< orphan*/  icS15Fixed16Number ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icSigXYZType ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, fz_buffer *buf, icS15Fixed16Number temp_XYZ[])
{
	int j;

	FUNC1(ctx, buf, icSigXYZType);
	FUNC0(ctx, buf, 0, 4);

	for (j = 0; j < 3; j++)
		FUNC1(ctx, buf, temp_XYZ[j]);
}