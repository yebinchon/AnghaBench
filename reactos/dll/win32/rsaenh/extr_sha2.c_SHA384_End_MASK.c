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
typedef  int sha2_byte ;
typedef  int SHA384_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int SHA384_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void** sha2_hex_digits ; 

char *FUNC3(SHA384_CTX* context, char buffer[]) {
	sha2_byte	digest[SHA384_DIGEST_LENGTH], *d = digest;
	int		i;

	/* Sanity check: */
	FUNC2(context != NULL);

	if (buffer != NULL) {
		FUNC1(digest, context);

		for (i = 0; i < SHA384_DIGEST_LENGTH; i++) {
			*buffer++ = sha2_hex_digits[(*d & 0xf0) >> 4];
			*buffer++ = sha2_hex_digits[*d & 0x0f];
			d++;
		}
		*buffer = 0;
	} else {
		FUNC0(context, sizeof(*context));
	}
	FUNC0(digest, SHA384_DIGEST_LENGTH);
	return buffer;
}