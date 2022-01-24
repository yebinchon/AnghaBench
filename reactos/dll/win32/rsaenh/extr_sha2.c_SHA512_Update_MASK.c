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
typedef  int /*<<< orphan*/  const sha2_word64 ;
typedef  int /*<<< orphan*/  sha2_byte ;
struct TYPE_4__ {int* bitcount; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ SHA512_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int SHA512_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(SHA512_CTX* context, const sha2_byte *data, size_t len) {
	unsigned int	freespace, usedspace;

	if (len == 0) {
		/* Calling with no data is valid - we do nothing */
		return;
	}

	/* Sanity check: */
	FUNC3(context != NULL && data != NULL);

	usedspace = (context->bitcount[0] >> 3) % SHA512_BLOCK_LENGTH;
	if (usedspace > 0) {
		/* Calculate how much free space is available in the buffer */
		freespace = SHA512_BLOCK_LENGTH - usedspace;

		if (len >= freespace) {
			/* Fill the buffer completely and process it */
			FUNC1(&context->buffer[usedspace], data, freespace);
			FUNC0(context->bitcount, freespace << 3);
			len -= freespace;
			data += freespace;
			FUNC2(context, (sha2_word64*)context->buffer);
		} else {
			/* The buffer is not yet full */
			FUNC1(&context->buffer[usedspace], data, len);
			FUNC0(context->bitcount, len << 3);
			/* Clean up: */
			usedspace = freespace = 0;
			return;
		}
	}
	while (len >= SHA512_BLOCK_LENGTH) {
		/* Process as many complete blocks as we can */
		FUNC2(context, (const sha2_word64*)data);
		FUNC0(context->bitcount, SHA512_BLOCK_LENGTH << 3);
		len -= SHA512_BLOCK_LENGTH;
		data += SHA512_BLOCK_LENGTH;
	}
	if (len > 0) {
		/* There's left-overs, so save 'em */
		FUNC1(context->buffer, data, len);
		FUNC0(context->bitcount, len << 3);
	}
	/* Clean up: */
	usedspace = freespace = 0;
}