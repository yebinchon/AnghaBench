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
typedef  int icTagTypeSignature ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, fz_buffer *buf, unsigned short gamma, icTagTypeSignature curveType)
{
	FUNC2(ctx, buf, curveType);
	FUNC0(ctx, buf, 0, 4);

	/* one entry for gamma */
	FUNC2(ctx, buf, 1);

	/* The encode (8frac8) gamma, with padding */
	FUNC1(ctx, buf, gamma);

	/* pad two bytes */
	FUNC0(ctx, buf, 0, 2);
}