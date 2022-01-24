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
struct TYPE_4__ {int /*<<< orphan*/ * (* open_with_stream ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* open_accel_with_stream ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ fz_document_handler ;
typedef  int /*<<< orphan*/  fz_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__ pdf_document_handler ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

fz_document *
FUNC5(fz_context *ctx, const char *magic, fz_stream *stream, fz_stream *accel)
{
	const fz_document_handler *handler;

	if (magic == NULL || stream == NULL)
		FUNC2(ctx, FZ_ERROR_GENERIC, "no document to open");

	handler = FUNC1(ctx, magic);
	if (!handler)
#if FZ_ENABLE_PDF
		handler = &pdf_document_handler;
#else
		FUNC2(ctx, FZ_ERROR_GENERIC, "cannot find document handler for file type: %s", magic);
#endif
	if (handler->open_accel_with_stream)
		if (accel || handler->open_with_stream == NULL)
			return handler->open_accel_with_stream(ctx, stream, accel);
	if (accel)
	{
		/* We've had an accelerator passed to a format that doesn't
		 * handle it. This should never happen, as how did the
		 * accelerator get created? */
		FUNC0(ctx, accel);
	}
	return handler->open_with_stream(ctx, stream);
}