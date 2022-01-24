#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long curlen; unsigned long length; unsigned char const* buf; } ;
struct hash_state {TYPE_1__ sha512; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 unsigned long SHA512_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct hash_state*,unsigned char const*) ; 

__attribute__((used)) static void FUNC3(struct hash_state * md,
			   const unsigned char *in,
			   unsigned long inlen)
{
	unsigned long n;

	while (inlen > 0) {
		if (md->sha512.curlen == 0 && inlen >= SHA512_BLOCKSIZE) {
			FUNC2(md, in);
			md->sha512.length += SHA512_BLOCKSIZE * 8;
			in += SHA512_BLOCKSIZE;
			inlen -= SHA512_BLOCKSIZE;
		} else {
			n = FUNC0(inlen, (SHA512_BLOCKSIZE - md->sha512.curlen));
			FUNC1(md->sha512.buf + md->sha512.curlen,
			       in, (size_t)n);
			md->sha512.curlen += n;
			in += n;
			inlen -= n;
			if (md->sha512.curlen == SHA512_BLOCKSIZE) {
				FUNC2(md, md->sha512.buf);
				md->sha512.length += SHA512_BLOCKSIZE * 8;
				md->sha512.curlen = 0;
			}
		}
	}
}