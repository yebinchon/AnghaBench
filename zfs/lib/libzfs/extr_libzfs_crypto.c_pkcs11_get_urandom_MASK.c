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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC3(uint8_t *buf, size_t bytes)
{
	int rand;
	ssize_t bytes_read = 0;

	rand = FUNC1("/dev/urandom", O_RDONLY);

	if (rand < 0)
		return (rand);

	while (bytes_read < bytes) {
		ssize_t rc = FUNC2(rand, buf + bytes_read, bytes - bytes_read);
		if (rc < 0)
			break;
		bytes_read += rc;
	}

	(void) FUNC0(rand);

	return (bytes_read);
}