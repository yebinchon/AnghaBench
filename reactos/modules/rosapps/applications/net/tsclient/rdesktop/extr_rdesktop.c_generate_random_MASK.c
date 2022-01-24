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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;
struct tms {int dummy; } ;
struct timeval {int dummy; } ;
struct stat {int st_atime; int st_mtime; int st_ctime; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC9 () ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct stat*) ; 
 int FUNC13 (struct tms*) ; 

void
FUNC14(uint8 * random)
{
	struct stat st;
	struct tms tmsbuf;
	MD5_CTX md5;
	uint32 *r;
	int fd, n;

	/* If we have a kernel random device, try that first */
	if (((fd = FUNC10("/dev/urandom", O_RDONLY)) != -1)
	    || ((fd = FUNC10("/dev/random", O_RDONLY)) != -1))
	{
		n = FUNC11(fd, random, 32);
		FUNC3(fd);
		if (n == 32)
			return;
	}

#ifdef EGD_SOCKET
	/* As a second preference use an EGD */
	if (generate_random_egd(random))
		return;
#endif

	/* Otherwise use whatever entropy we can gather - ideas welcome. */
	r = (uint32 *) random;
	r[0] = (FUNC6()) | (FUNC7() << 16);
	r[1] = (FUNC9()) | (FUNC5() << 16);
	r[2] = FUNC13(&tmsbuf);	/* system uptime (clocks) */
	FUNC8((struct timeval *) &r[3], NULL);	/* sec and usec */
	FUNC12("/tmp", &st);
	r[5] = st.st_atime;
	r[6] = st.st_mtime;
	r[7] = st.st_ctime;

	/* Hash both halves with MD5 to obscure possible patterns */
	FUNC1(&md5);
	FUNC2(&md5, random, 16);
	FUNC0(random, &md5);
	FUNC2(&md5, random + 16, 16);
	FUNC0(random + 16, &md5);
}