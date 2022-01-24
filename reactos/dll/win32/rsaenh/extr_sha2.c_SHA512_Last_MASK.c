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
typedef  int sha2_word64 ;
struct TYPE_4__ {int* bitcount; int* buffer; } ;
typedef  TYPE_1__ SHA512_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int SHA512_BLOCK_LENGTH ; 
 unsigned int SHA512_SHORT_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*) ; 

void FUNC3(SHA512_CTX* context) {
	unsigned int	usedspace;

	usedspace = (context->bitcount[0] >> 3) % SHA512_BLOCK_LENGTH;
#ifndef WORDS_BIGENDIAN
	/* Convert FROM host byte order */
	FUNC1(context->bitcount[0],context->bitcount[0]);
	FUNC1(context->bitcount[1],context->bitcount[1]);
#endif
	if (usedspace > 0) {
		/* Begin padding with a 1 bit: */
		context->buffer[usedspace++] = 0x80;

		if (usedspace <= SHA512_SHORT_BLOCK_LENGTH) {
			/* Set-up for the last transform: */
			FUNC0(&context->buffer[usedspace], SHA512_SHORT_BLOCK_LENGTH - usedspace);
		} else {
			if (usedspace < SHA512_BLOCK_LENGTH) {
				FUNC0(&context->buffer[usedspace], SHA512_BLOCK_LENGTH - usedspace);
			}
			/* Do second-to-last transform: */
			FUNC2(context, (sha2_word64*)context->buffer);

			/* And set-up for the last transform: */
			FUNC0(context->buffer, SHA512_BLOCK_LENGTH - 2);
		}
	} else {
		/* Prepare for final transform: */
		FUNC0(context->buffer, SHA512_SHORT_BLOCK_LENGTH);

		/* Begin padding with a 1 bit: */
		*context->buffer = 0x80;
	}
	/* Store the length of input data (in bits): */
	*(sha2_word64*)&context->buffer[SHA512_SHORT_BLOCK_LENGTH] = context->bitcount[1];
	*(sha2_word64*)&context->buffer[SHA512_SHORT_BLOCK_LENGTH+8] = context->bitcount[0];

	/* Final transform: */
	FUNC2(context, (sha2_word64*)context->buffer);
}