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
struct stat {int st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,unsigned long) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,unsigned char*,int) ; 

int FUNC12(int argc, char **argv) {
    struct stat stat;
    int fd, cycles;

    if (argc != 3) {
        FUNC2(stderr,"Usage: <filename> <cycles>\n");
        FUNC1(1);
    }

    FUNC9(FUNC10(NULL));
    char *filename = argv[1];
    cycles = FUNC0(argv[2]);
    fd = FUNC5(filename,O_RDWR);
    if (fd == -1) {
        FUNC6("open");
        FUNC1(1);
    }
    FUNC3(fd,&stat);

    while(cycles--) {
        unsigned char buf[32];
        unsigned long offset = FUNC8()%stat.st_size;
        int writelen = 1+FUNC8()%31;
        int j;

        for (j = 0; j < writelen; j++) buf[j] = (char)FUNC8();
        FUNC4(fd,offset,SEEK_SET);
        FUNC7("Writing %d bytes at offset %lu\n", writelen, offset);
        FUNC11(fd,buf,writelen);
    }
    return 0;
}