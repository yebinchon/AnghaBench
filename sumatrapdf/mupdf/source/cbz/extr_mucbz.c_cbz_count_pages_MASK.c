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
typedef  int /*<<< orphan*/  fz_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_2__ {int page_count; } ;
typedef  TYPE_1__ cbz_document ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(fz_context *ctx, fz_document *doc_, int chapter)
{
	cbz_document *doc = (cbz_document*)doc_;
	return doc->page_count;
}