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
struct TYPE_3__ {int byte_padding; } ;
typedef  TYPE_1__ fz_icc_tag ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int icSigTextDescriptionType ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, fz_buffer *buf, const char text[], fz_icc_tag tag_list[], int curr_tag)
{
	int len = FUNC3(text);

	FUNC1(ctx, buf, icSigTextDescriptionType);
	FUNC0(ctx, buf, 0, 4);
	FUNC1(ctx, buf, len + 1);
	FUNC2(ctx, buf, text);
	/* 1 + 4 + 4 + 2 + 1 + 67 */
	FUNC0(ctx, buf, 0, 79);
	FUNC0(ctx, buf, 0, tag_list[curr_tag].byte_padding);
}