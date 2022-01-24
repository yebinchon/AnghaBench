#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* count; int* state; } ;
typedef  TYPE_1__ fz_md5 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 unsigned char* padding ; 

void FUNC3(fz_md5 *context, unsigned char digest[16])
{
	unsigned char bits[8];
	unsigned index, padlen;

	/* Save number of bits */
	FUNC0(bits, context->count, 8);

	/* Pad out to 56 mod 64 */
	index = (unsigned)((context->count[0] >> 3) & 0x3f);
	padlen = index < 56 ? 56 - index : 120 - index;
	FUNC1(context, padding, padlen);

	/* Append length (before padding) */
	FUNC1(context, bits, 8);

	/* Store state in digest */
	FUNC0(digest, context->state, 16);

	/* Zeroize sensitive information */
	FUNC2(context, 0, sizeof(fz_md5));
}