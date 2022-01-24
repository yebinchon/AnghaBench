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
struct fmt {int /*<<< orphan*/  gen; int /*<<< orphan*/  num; int /*<<< orphan*/  crypt; } ;
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  fmt_hex_out ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fmt*,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fmt*,unsigned char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(fz_context *ctx, struct fmt *fmt, pdf_obj *obj)
{
	unsigned char *s = (unsigned char *)FUNC2(ctx, obj);
	int n = FUNC3(ctx, obj);

	FUNC0(ctx, fmt, '<');
	FUNC1(ctx, fmt->crypt, fmt->num, fmt->gen, fmt_hex_out, fmt, s, n);
	FUNC0(ctx, fmt, '>');
}