#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ compress; } ;
struct TYPE_6__ {int w; int n; int /*<<< orphan*/ * out; } ;
struct TYPE_8__ {unsigned char* stripbuf; size_t complen; unsigned char* compbuf; TYPE_2__ options; TYPE_1__ super; } ;
typedef  TYPE_3__ pclm_band_writer ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_DEFLATE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, pclm_band_writer *writer, int fill)
{
	unsigned char *data = writer->stripbuf;
	fz_output *out = writer->super.out;
	int w = writer->super.w;
	int n = writer->super.n;
	size_t len = w*n*fill;

	/* Buffer is full, compress it and write it. */
	if (writer->options.compress)
	{
		size_t destLen = writer->complen;
		FUNC0(ctx, writer->compbuf, &destLen, data, len, FZ_DEFLATE_DEFAULT);
		len = destLen;
		data = writer->compbuf;
	}
	FUNC2(ctx, out, "%d 0 obj\n<<\n/Width %d\n/ColorSpace /Device%s\n/Height %d\n%s/Subtype /Image\n",
		FUNC4(ctx, writer), w, n == 1 ? "Gray" : "RGB", fill, writer->options.compress ? "/Filter /FlateDecode\n" : "");
	FUNC2(ctx, out, "/Length %zd\n/Type /XObject\n/BitsPerComponent 8\n>>\nstream\n", len);
	FUNC1(ctx, out, data, len);
	FUNC3(ctx, out, "\nendstream\nendobj\n");
}