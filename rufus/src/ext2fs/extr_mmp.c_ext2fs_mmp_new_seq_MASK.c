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
struct timeval {int tv_sec; int tv_usec; } ;

/* Variables and functions */
 int EXT2_ET_OP_NOT_SUPPORTED ; 
 unsigned int EXT4_MMP_SEQ_MAX ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

unsigned FUNC5(void)
{
#ifdef CONFIG_MMP
	unsigned new_seq;
	struct timeval tv;

	gettimeofday(&tv, 0);
	srand((getpid() << 16) ^ getuid() ^ tv.tv_sec ^ tv.tv_usec);

	gettimeofday(&tv, 0);
	/* Crank the random number generator a few times */
	for (new_seq = (tv.tv_sec ^ tv.tv_usec) & 0x1F; new_seq > 0; new_seq--)
		rand();

	do {
		new_seq = rand();
	} while (new_seq > EXT4_MMP_SEQ_MAX);

	return new_seq;
#else
	return EXT2_ET_OP_NOT_SUPPORTED;
#endif
}