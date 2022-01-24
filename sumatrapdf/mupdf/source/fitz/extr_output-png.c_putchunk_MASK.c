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
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC3(fz_context *ctx, fz_output *out, char *tag, unsigned char *data, int size)
{
	unsigned int sum;
	FUNC2(ctx, out, size);
	FUNC1(ctx, out, tag, 4);
	FUNC1(ctx, out, data, size);
	sum = FUNC0(0, NULL, 0);
	sum = FUNC0(sum, (unsigned char*)tag, 4);
	sum = FUNC0(sum, data, size);
	FUNC2(ctx, out, sum);
}