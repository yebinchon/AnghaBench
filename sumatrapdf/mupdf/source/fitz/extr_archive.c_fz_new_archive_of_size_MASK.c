#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ fz_archive ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

fz_archive *
FUNC3(fz_context *ctx, fz_stream *file, int size)
{
	fz_archive *arch;
	arch = FUNC0(FUNC1(ctx, 1, size), "fz_archive");
	arch->file = FUNC2(ctx, file);
	return arch;
}