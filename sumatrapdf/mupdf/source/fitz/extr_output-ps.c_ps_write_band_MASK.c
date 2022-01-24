#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uInt ;
struct TYPE_7__ {int avail_in; scalar_t__ avail_out; int /*<<< orphan*/ * next_out; int /*<<< orphan*/ * next_in; } ;
struct TYPE_5__ {int w; int h; int n; int /*<<< orphan*/ * out; } ;
struct TYPE_6__ {unsigned char* input; int input_size; unsigned char* output; int output_size; TYPE_3__ stream; TYPE_1__ super; } ;
typedef  TYPE_2__ ps_band_writer ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_band_writer ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 int Z_OK ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, fz_band_writer *writer_, int stride, int band_start, int band_height, const unsigned char *samples)
{
	ps_band_writer *writer = (ps_band_writer *)writer_;
	fz_output *out = writer->super.out;
	int w = writer->super.w;
	int h = writer->super.h;
	int n = writer->super.n;
	int x, y, i, err;
	int required_input;
	int required_output;
	unsigned char *o;

	if (!out)
		return;

	if (band_start+band_height >= h)
		band_height = h - band_start;

	required_input = w*n*band_height;
	required_output = (int)FUNC1(&writer->stream, required_input);

	if (writer->input == NULL || writer->input_size < required_input)
	{
		FUNC2(ctx, writer->input);
		writer->input = NULL;
		writer->input = FUNC3(ctx, required_input);
		writer->input_size = required_input;
	}

	if (writer->output == NULL || writer->output_size < required_output)
	{
		FUNC2(ctx, writer->output);
		writer->output = NULL;
		writer->output = FUNC3(ctx, required_output);
		writer->output_size = required_output;
	}

	o = writer->input;
	for (y = 0; y < band_height; y++)
	{
		for (x = 0; x < w; x++)
		{
			for (i = n; i > 0; i--)
				*o++ = *samples++;
		}
		samples += stride - w*n;
	}

	writer->stream.next_in = (Bytef*)writer->input;
	writer->stream.avail_in = required_input;
	writer->stream.next_out = (Bytef*)writer->output;
	writer->stream.avail_out = (uInt)writer->output_size;

	err = FUNC0(&writer->stream, Z_NO_FLUSH);
	if (err != Z_OK)
		FUNC4(ctx, FZ_ERROR_GENERIC, "compression error %d", err);

	FUNC5(ctx, out, writer->output, writer->output_size - writer->stream.avail_out);
}