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
typedef  void* off_t ;
typedef  int mode_t ;

/* Variables and functions */
 int EOF ; 
 int FALLOC_FL_KEEP_SIZE ; 
 int FALLOC_FL_PUNCH_HOLE ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,size_t) ; 
 int FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 size_t FUNC10 (int,char*,size_t) ; 

int
FUNC11(int argc, char *argv[])
{
	char *filename = NULL;
	char *buf = NULL;
	size_t filesize = 0;
	off_t start_off = 0;
	off_t off_len = 0;
	int  fd, ch;
	mode_t mode = S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH;

	while ((ch = FUNC5(argc, argv, "l:s:n:")) != EOF) {
		switch (ch) {
		case 'l':
			filesize = FUNC0(optarg);
			break;
		case 's':
			start_off = FUNC0(optarg);
			break;
		case 'n':
			off_len = FUNC0(optarg);
			break;
		default:
			FUNC9(argv[0]);
			break;
		}
	}

	if (optind == argc - 1)
		filename = argv[optind];
	else
		FUNC9(argv[0]);

	if ((fd = FUNC7(filename, O_RDWR | O_CREAT | O_TRUNC, mode)) < 0) {
		FUNC8("open");
		return (1);
	}

	buf = (char *)FUNC1(1, filesize);
	if (buf == NULL) {
		FUNC8("write");
		FUNC2(fd);
		return (1);
	}
	FUNC6(buf, 'c', filesize);

	if (FUNC10(fd, buf, filesize) < filesize) {
		FUNC4(buf);
		FUNC8("write");
		FUNC2(fd);
		return (1);
	}

	FUNC4(buf);

#if defined(FALLOC_FL_PUNCH_HOLE) && defined(FALLOC_FL_KEEP_SIZE)
	if (fallocate(fd, FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,
	    start_off, off_len) < 0) {
		perror("fallocate");
		close(fd);
		return (1);
	}
#else /* !(defined(FALLOC_FL_PUNCH_HOLE) && defined(FALLOC_FL_KEEP_SIZE)) */
	{
		FUNC8("FALLOC_FL_PUNCH_HOLE unsupported");
		FUNC2(fd);
		return (1);
	}
#endif /* defined(FALLOC_FL_PUNCH_HOLE) && defined(FALLOC_FL_KEEP_SIZE) */
	FUNC2(fd);
	return (0);
}