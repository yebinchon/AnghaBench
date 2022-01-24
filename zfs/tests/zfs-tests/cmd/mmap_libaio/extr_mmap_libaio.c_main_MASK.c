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
struct iocb {int dummy; } ;

/* Variables and functions */
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iocb*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  io_ctx ; 
 int /*<<< orphan*/  FUNC5 (struct iocb*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iocb*,int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,int,int) ; 
 int FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC12(int argc, char **argv)
{
	char *buf;
	int page_size = FUNC4();
	int buf_size = FUNC11(argv[2], NULL, 0);
	int rwfd;
	struct iocb iocb;

	if (FUNC7(1024, &io_ctx))
		FUNC2(1, "io_queue_init failed");

	rwfd = FUNC10(argv[1], O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
	if (rwfd < 0)
		FUNC2(1, "open failed");

	if (FUNC3(rwfd, buf_size) < 0)
		FUNC2(1, "ftruncate failed");

	buf = FUNC9(0, page_size, PROT_READ | PROT_WRITE, MAP_SHARED, rwfd, 0);
	if (buf == MAP_FAILED)
		FUNC2(1, "mmap failed");

	(void) FUNC6(&iocb, rwfd, buf, buf_size, 0);
	FUNC1(&iocb);

	(void) FUNC5(&iocb, rwfd, buf, buf_size, 0);
	FUNC1(&iocb);

	if (FUNC0(rwfd))
		FUNC2(1, "close failed");

	if (FUNC8(io_ctx) != 0)
		FUNC2(1, "io_queue_release failed");

	return (0);
}