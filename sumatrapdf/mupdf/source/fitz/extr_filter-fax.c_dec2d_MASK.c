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
struct TYPE_4__ {scalar_t__ stage; int a; int c; int columns; int /*<<< orphan*/  dst; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ fz_faxd ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
#define  ERROR 138 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
#define  H 137 
#define  P 136 
 scalar_t__ STATE_H1 ; 
 scalar_t__ STATE_H2 ; 
 scalar_t__ STATE_NORMAL ; 
#define  UNCOMPRESSED 135 
#define  V0 134 
#define  VL1 133 
#define  VL2 132 
#define  VL3 131 
#define  VR1 130 
#define  VR2 129 
#define  VR3 128 
 int /*<<< orphan*/  cf_2d_decode ; 
 int /*<<< orphan*/  cf_black_decode ; 
 int /*<<< orphan*/  cf_white_decode ; 
 int /*<<< orphan*/  cfd_2d_initial_bits ; 
 int /*<<< orphan*/  cfd_black_initial_bits ; 
 int /*<<< orphan*/  cfd_white_initial_bits ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_faxd *fax)
{
	int code, b1, b2;

	if (fax->stage == STATE_H1 || fax->stage == STATE_H2)
	{
		if (fax->a == -1)
			fax->a = 0;

		if (fax->c)
			code = FUNC3(ctx, fax, cf_black_decode, cfd_black_initial_bits);
		else
			code = FUNC3(ctx, fax, cf_white_decode, cfd_white_initial_bits);

		if (code == UNCOMPRESSED)
			FUNC2(ctx, FZ_ERROR_GENERIC, "uncompressed data in faxd");

		if (code < 0)
			FUNC2(ctx, FZ_ERROR_GENERIC, "negative code in 2d faxd");

		if (fax->a + code > fax->columns)
			FUNC2(ctx, FZ_ERROR_GENERIC, "overflow in 2d faxd");

		if (fax->c)
			FUNC4(fax->dst, fax->a, fax->a + code);

		fax->a += code;

		if (code < 64)
		{
			fax->c = !fax->c;
			if (fax->stage == STATE_H1)
				fax->stage = STATE_H2;
			else if (fax->stage == STATE_H2)
				fax->stage = STATE_NORMAL;
		}

		return;
	}

	code = FUNC3(ctx, fax, cf_2d_decode, cfd_2d_initial_bits);

	switch (code)
	{
	case H:
		fax->stage = STATE_H1;
		break;

	case P:
		b1 = FUNC1(fax->ref, fax->a, fax->columns, !fax->c);
		if (b1 >= fax->columns)
			b2 = fax->columns;
		else
			b2 = FUNC0(fax->ref, b1, fax->columns);
		if (fax->c) FUNC4(fax->dst, fax->a, b2);
		fax->a = b2;
		break;

	case V0:
		b1 = FUNC1(fax->ref, fax->a, fax->columns, !fax->c);
		if (fax->c) FUNC4(fax->dst, fax->a, b1);
		fax->a = b1;
		fax->c = !fax->c;
		break;

	case VR1:
		b1 = 1 + FUNC1(fax->ref, fax->a, fax->columns, !fax->c);
		if (b1 >= fax->columns) b1 = fax->columns;
		if (fax->c) FUNC4(fax->dst, fax->a, b1);
		fax->a = b1;
		fax->c = !fax->c;
		break;

	case VR2:
		b1 = 2 + FUNC1(fax->ref, fax->a, fax->columns, !fax->c);
		if (b1 >= fax->columns) b1 = fax->columns;
		if (fax->c) FUNC4(fax->dst, fax->a, b1);
		fax->a = b1;
		fax->c = !fax->c;
		break;

	case VR3:
		b1 = 3 + FUNC1(fax->ref, fax->a, fax->columns, !fax->c);
		if (b1 >= fax->columns) b1 = fax->columns;
		if (fax->c) FUNC4(fax->dst, fax->a, b1);
		fax->a = b1;
		fax->c = !fax->c;
		break;

	case VL1:
		b1 = -1 + FUNC1(fax->ref, fax->a, fax->columns, !fax->c);
		if (b1 < 0) b1 = 0;
		if (fax->c) FUNC4(fax->dst, fax->a, b1);
		fax->a = b1;
		fax->c = !fax->c;
		break;

	case VL2:
		b1 = -2 + FUNC1(fax->ref, fax->a, fax->columns, !fax->c);
		if (b1 < 0) b1 = 0;
		if (fax->c) FUNC4(fax->dst, fax->a, b1);
		fax->a = b1;
		fax->c = !fax->c;
		break;

	case VL3:
		b1 = -3 + FUNC1(fax->ref, fax->a, fax->columns, !fax->c);
		if (b1 < 0) b1 = 0;
		if (fax->c) FUNC4(fax->dst, fax->a, b1);
		fax->a = b1;
		fax->c = !fax->c;
		break;

	case UNCOMPRESSED:
		FUNC2(ctx, FZ_ERROR_GENERIC, "uncompressed data in faxd");

	case ERROR:
		FUNC2(ctx, FZ_ERROR_GENERIC, "invalid code in 2d faxd");

	default:
		FUNC2(ctx, FZ_ERROR_GENERIC, "invalid code in 2d faxd (%d)", code);
	}
}