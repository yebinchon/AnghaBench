#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,size_t) ; 
 size_t FUNC3 (unsigned char const*) ; 

int
FUNC4(fz_context *ctx, fz_stream *file)
{
	const unsigned char gnusignature[6] = { 'u', 's', 't', 'a', 'r', ' ' };
	const unsigned char paxsignature[6] = { 'u', 's', 't', 'a', 'r', '\0' };
	const unsigned char v7signature[6] = { '\0', '\0', '\0', '\0', '\0', '\0' };
	unsigned char data[6];
	size_t n;

	FUNC1(ctx, file, 257, 0);
	n = FUNC0(ctx, file, data, FUNC3(data));
	if (n != FUNC3(data))
		return 0;
	if (!FUNC2(data, gnusignature, FUNC3(gnusignature)))
		return 1;
	if (!FUNC2(data, paxsignature, FUNC3(paxsignature)))
		return 1;
	if (!FUNC2(data, v7signature, FUNC3(v7signature)))
		return 1;

	return 0;
}