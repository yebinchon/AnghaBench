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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 char* FUNC6 (char*,long*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(int argc, char *argv[])
{
    FILE *fp;
    char *xmldata, type[] = "xml ";
    long fsize, boxsize;

    if (argc < 3) {
        FUNC1(stderr, "USAGE: %s modifing.jp2 adding.xml\n", argv[0]);
        return -1;
    }

    fp = FUNC5(argv[1]);
    if (!fp) {
        return -1;
    }

    xmldata = FUNC6(argv[2], &fsize);
    if (fsize < 0) {
        return -1;
    }
    boxsize = fsize + 8;

    FUNC2((boxsize >> 24) & 0xff, fp);
    FUNC2((boxsize >> 16) & 0xff, fp);
    FUNC2((boxsize >> 8) & 0xff, fp);
    FUNC2(boxsize & 0xff, fp);
    FUNC4(type, 4, 1, fp);
    FUNC4(xmldata, (size_t)fsize, 1, fp);

    FUNC3(xmldata);
    FUNC0(fp);

    return 0;
}