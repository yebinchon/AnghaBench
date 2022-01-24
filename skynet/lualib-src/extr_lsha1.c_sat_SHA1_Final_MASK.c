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
typedef  unsigned char uint8_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int* count; int* state; unsigned char* buffer; } ;
typedef  TYPE_1__ SHA1_CTX ;

/* Variables and functions */
 int SHA1_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC2(SHA1_CTX* context, uint8_t digest[SHA1_DIGEST_SIZE])
{
	uint32_t i;
	uint8_t	 finalcount[8];

	for	(i = 0;	i <	8; i++)	{
		finalcount[i] =	(unsigned char)((context->count[(i >= 4	? 0	: 1)]
		 >>	((3-(i & 3)) * 8) )	& 255);	 /*	Endian independent */
	}
	FUNC1(context, (uint8_t *)"\200",	1);
	while ((context->count[0] &	504) !=	448) {
		FUNC1(context, (uint8_t *)"\0", 1);
	}
	FUNC1(context, finalcount, 8);  /* Should	cause a	SHA1_Transform() */
	for	(i = 0;	i <	SHA1_DIGEST_SIZE; i++) {
		digest[i] =	(uint8_t)
		 ((context->state[i>>2]	>> ((3-(i &	3))	* 8) ) & 255);
	}

	/* Wipe	variables */
	i =	0;
	FUNC0(context->buffer,	0, 64);
	FUNC0(context->state, 0, 20);
	FUNC0(context->count, 0, 8);
	FUNC0(finalcount, 0, 8);	/* SWR */
}