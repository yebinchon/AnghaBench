#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_5__ {int file_size; } ;
typedef  TYPE_1__ pdf_document ;
struct TYPE_6__ {int offset; int length; } ;
typedef  TYPE_2__ fz_range ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  ByteRange ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(fz_context *ctx, pdf_document *doc, pdf_obj *signature, fz_range *byte_range)
{
	pdf_obj *br = FUNC4(ctx, signature, FUNC0(V), FUNC0(ByteRange), NULL);
	int i, n = FUNC3(ctx, br)/2;

	if (byte_range)
	{
		for (i = 0; i < n; i++)
		{
			int offset = FUNC2(ctx, br, 2*i);
			int length = FUNC2(ctx, br, 2*i+1);

			if (offset < 0 || offset > doc->file_size)
				FUNC1(ctx, FZ_ERROR_GENERIC, "offset of signature byte range outside of file");
			else if (length < 0)
				FUNC1(ctx, FZ_ERROR_GENERIC, "length of signature byte range negative");
			else if (offset + length > doc->file_size)
				FUNC1(ctx, FZ_ERROR_GENERIC, "signature byte range extends past end of file");

			byte_range[i].offset = offset;
			byte_range[i].length = length;
		}
	}

	return n;
}