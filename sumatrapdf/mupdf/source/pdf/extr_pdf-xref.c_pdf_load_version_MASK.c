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
struct TYPE_3__ {int version; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 float FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, pdf_document *doc)
{
	char buf[20];

	FUNC2(ctx, doc->file, 0, SEEK_SET);
	FUNC1(ctx, doc->file, buf, sizeof buf);
	if (FUNC6(buf) < 5 || FUNC5(buf, "%PDF-", 5) != 0)
		FUNC3(ctx, FZ_ERROR_GENERIC, "cannot recognize version marker");

	doc->version = 10 * (FUNC0(buf+5) + 0.05f);
	if (doc->version < 10 || doc->version > 17)
		if (doc->version != 20)
			FUNC4(ctx, "unknown PDF version: %d.%d", doc->version / 10, doc->version % 10);
}