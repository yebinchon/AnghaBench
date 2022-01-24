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
struct TYPE_3__ {int has_digest; int /*<<< orphan*/  digest; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void FUNC3(fz_context *ctx, fz_font *font, unsigned char digest[16])
{
	if (!font->buffer)
		FUNC1(ctx, FZ_ERROR_GENERIC, "no font file for digest");
	if (!font->has_digest)
	{
		FUNC0(ctx, font->buffer, font->digest);
		font->has_digest = 1;
	}
	FUNC2(digest, font->digest, 16);
}