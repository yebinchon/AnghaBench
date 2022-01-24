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
struct sigaction {int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  scalar_t__ offset_t ;
typedef  int mode_t ;

/* Variables and functions */
 int EFBIG ; 
 int EINVAL ; 
 scalar_t__ MAXOFFSET_T ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SIGXFSZ ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigxfsz ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int,char*,int) ; 

int
FUNC12(int argc, char **argv)
{
	int		fd = 0;
	offset_t	offset = (MAXOFFSET_T - 1);
	offset_t	llseek_ret = 0;
	int		write_ret = 0;
	int		err = 0;
	char		mybuf[5] = "aaaa\0";
	char		*testfile;
	mode_t		mode = S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH;
	struct sigaction sa;

	if (argc != 2) {
		FUNC10(argv[0]);
	}

	if (FUNC7(&sa.sa_mask) == -1)
		return (errno);
	sa.sa_flags = 0;
	sa.sa_handler = sigxfsz;
	if (FUNC6(SIGXFSZ, &sa, NULL) == -1)
		return (errno);

	testfile = FUNC8(argv[1]);

	fd = FUNC3(testfile, O_CREAT | O_RDWR, mode);
	if (fd < 0) {
		err = errno;
		FUNC4("Failed to create testfile");
		FUNC1(testfile);
		return (err);
	}

	llseek_ret = FUNC2(fd, offset, SEEK_SET);
	if (llseek_ret < 0) {
		err = errno;
		FUNC4("Failed to seek to end of testfile");
		goto out;
	}

	write_ret = FUNC11(fd, mybuf, 1);
	if (write_ret < 0) {
		err = errno;
		FUNC4("Failed to write to end of file");
		goto out;
	}

	offset = 0;
	llseek_ret = FUNC2(fd, offset, SEEK_CUR);
	if (llseek_ret < 0) {
		err = errno;
		FUNC4("Failed to seek to end of file");
		goto out;
	}

	write_ret = FUNC11(fd, mybuf, 1);
	if (write_ret < 0) {
		if (errno == EFBIG || errno == EINVAL) {
			(void) FUNC5("write errno=EFBIG|EINVAL: success\n");
			err = 0;
		} else {
			err = errno;
			FUNC4("Did not receive EFBIG");
		}
	} else {
		(void) FUNC5("write completed successfully, test failed\n");
		err = 1;
	}

out:
	(void) FUNC9(testfile);
	FUNC1(testfile);
	FUNC0(fd);
	return (err);
}