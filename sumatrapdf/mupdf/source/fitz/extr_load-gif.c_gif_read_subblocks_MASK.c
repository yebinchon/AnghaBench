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
struct info {int dummy; } ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const unsigned char *
FUNC2(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end, fz_buffer *buf)
{
	int len;

	do
	{
		if (end - p < 1)
			FUNC1(ctx, FZ_ERROR_GENERIC, "premature end in data subblocks in gif image");
		len = *p;
		p += 1;

		if (len > 0)
		{
			if (end - p < len)
				FUNC1(ctx, FZ_ERROR_GENERIC, "premature end in data subblock in gif image");
			if (buf)
				FUNC0(ctx, buf, p, len);
			p += len;
		}
	} while (len > 0);

	return p;
}