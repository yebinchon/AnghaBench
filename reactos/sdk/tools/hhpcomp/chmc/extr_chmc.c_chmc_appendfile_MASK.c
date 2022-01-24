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
struct stat {size_t st_size; } ;
struct chmcFile {int /*<<< orphan*/  fd; } ;
typedef  size_t off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int CHMC_NOERR ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (char const*,int) ; 
 int FUNC3 (int,void*,size_t) ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 

int FUNC6(struct chmcFile *chm, const char *filename, void *buf,
                size_t size )
{
	struct stat statbuf;
	int in;
	off_t todo, toread;
	int rx;

	if (FUNC4(filename, &statbuf) < 0)
		return errno;

	in = FUNC2(filename, O_RDONLY | O_BINARY);
	if (in >= 0) {
		todo = statbuf.st_size;

		while (todo) {
			toread = size;
			if (toread > todo)
				toread = todo;

			rx = FUNC3(in, buf, toread);
			if (rx > 0) {
				FUNC5(chm->fd, buf, rx);
				todo -= rx;
			}
		}

		FUNC1(in);
	}
	else
		FUNC0("open %s\n", filename);

	return CHMC_NOERR;
}