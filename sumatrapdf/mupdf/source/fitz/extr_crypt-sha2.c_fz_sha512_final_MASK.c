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
struct TYPE_5__ {int* u8; int* u64; } ;
struct TYPE_6__ {int* count; int* state; TYPE_1__ buffer; } ;
typedef  TYPE_2__ fz_sha512 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 

void FUNC5(fz_sha512 *context, unsigned char digest[64])
{
	/* Add padding as described in RFC 3174 (it describes SHA-1 but
	 * the same padding style is used for SHA-512 too). */
	unsigned int j = context->count[0] & 0x7F;
	context->buffer.u8[j++] = 0x80;

	while (j != 112)
	{
		if (j == 128)
		{
			FUNC4(context->state, context->buffer.u64);
			j = 0;
		}
		context->buffer.u8[j++] = 0x00;
	}

	/* Convert the message size from bytes to bits. */
	context->count[1] = (context->count[1] << 3) + (context->count[0] >> 29);
	context->count[0] = context->count[0] << 3;

	if (!FUNC1())
	{
		context->buffer.u64[14] = FUNC0(context->count[1]);
		context->buffer.u64[15] = FUNC0(context->count[0]);
	}
	else
	{
		context->buffer.u64[14] = context->count[1];
		context->buffer.u64[15] = context->count[0];
	}
	FUNC4(context->state, context->buffer.u64);

	if (!FUNC1())
		for (j = 0; j < 8; j++)
			context->state[j] = FUNC0(context->state[j]);

	FUNC2(digest, &context->state[0], 64);
	FUNC3(context, 0, sizeof(fz_sha512));
}