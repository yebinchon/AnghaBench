#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * out; } ;
struct TYPE_4__ {int xref_max; int pages; int obj_num; void** xref; void** page_obj; void** compbuf; void** stripbuf; TYPE_1__ super; } ;
typedef  TYPE_2__ pclm_band_writer ;
typedef  void* int64_t ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_band_writer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void**) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, fz_band_writer *writer_)
{
	pclm_band_writer *writer = (pclm_band_writer *)writer_;
	fz_output *out = writer->super.out;
	int i;

	/* We actually do the trailer writing in the drop */
	if (writer->xref_max > 2)
	{
		int64_t t_pos;

		/* Catalog */
		writer->xref[1] = FUNC1(ctx, out);
		FUNC2(ctx, out, "1 0 obj\n<<\n/Type /Catalog\n/Pages 2 0 R\n>>\nendobj\n");

		/* Page table */
		writer->xref[2] = FUNC1(ctx, out);
		FUNC2(ctx, out, "2 0 obj\n<<\n/Count %d\n/Kids [ ", writer->pages);

		for (i = 0; i < writer->pages; i++)
			FUNC2(ctx, out, "%d 0 R ", writer->page_obj[i]);
		FUNC3(ctx, out, "]\n/Type /Pages\n>>\nendobj\n");

		/* Xref */
		t_pos = FUNC1(ctx, out);
		FUNC2(ctx, out, "xref\n0 %d\n0000000000 65535 f \n", writer->obj_num);
		for (i = 1; i < writer->obj_num; i++)
			FUNC2(ctx, out, "%010zd 00000 n \n", writer->xref[i]);
		FUNC2(ctx, out, "trailer\n<<\n/Size %d\n/Root 1 0 R\n>>\nstartxref\n%ld\n%%%%EOF\n", writer->obj_num, t_pos);
	}

	FUNC0(ctx, writer->stripbuf);
	FUNC0(ctx, writer->compbuf);
	FUNC0(ctx, writer->page_obj);
	FUNC0(ctx, writer->xref);
}