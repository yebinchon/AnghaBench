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
struct TYPE_7__ {scalar_t__ avail_out; int /*<<< orphan*/ * next_out; scalar_t__ avail_in; int /*<<< orphan*/ * next_in; } ;
struct TYPE_5__ {int /*<<< orphan*/ * out; } ;
struct TYPE_6__ {int stream_ended; TYPE_3__ stream; scalar_t__ output_size; scalar_t__ output; TYPE_1__ super; } ;
typedef  TYPE_2__ ps_band_writer ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_band_writer ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_band_writer *writer_)
{
	ps_band_writer *writer = (ps_band_writer *)writer_;
	fz_output *out = writer->super.out;
	int err;

	writer->stream.next_in = NULL;
	writer->stream.avail_in = 0;
	writer->stream.next_out = (Bytef*)writer->output;
	writer->stream.avail_out = (uInt)writer->output_size;

	err = FUNC0(&writer->stream, Z_FINISH);
	if (err != Z_STREAM_END)
		FUNC2(ctx, FZ_ERROR_GENERIC, "compression error %d", err);
	writer->stream_ended = 1;
	err = FUNC1(&writer->stream);
	if (err != Z_OK)
		FUNC2(ctx, FZ_ERROR_GENERIC, "compression error %d", err);

	FUNC3(ctx, out, writer->output, writer->output_size - writer->stream.avail_out);
	FUNC4(ctx, out, "\nshowpage\n%%%%PageTrailer\n%%%%EndPageTrailer\n\n");
}