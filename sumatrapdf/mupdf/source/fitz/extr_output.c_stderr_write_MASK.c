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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1(fz_context *ctx, void *opaque, const void *buffer, size_t count)
{
	FUNC0(ctx, stderr, buffer, count);
}