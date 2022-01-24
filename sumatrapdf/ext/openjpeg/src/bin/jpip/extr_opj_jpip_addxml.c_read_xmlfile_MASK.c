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
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (size_t) ; 
 int /*<<< orphan*/  stderr ; 

char * FUNC9(const char filename[], long *fsize)
{
    FILE *fp;
    char *data;

    /*  fprintf( stderr, "open %s\n", filename);*/
    if (!(fp = FUNC2(filename, "r"))) {
        FUNC3(stderr, "XML file %s not found\n", filename);
        return NULL;
    }

    if (FUNC6(fp, 0, SEEK_END) == -1) {
        FUNC3(stderr, "XML file %s broken (seek error)\n", filename);
        FUNC1(fp);
        return NULL;
    }

    if ((*fsize = FUNC7(fp)) == -1) {
        FUNC3(stderr, "XML file %s broken (seek error)\n", filename);
        FUNC1(fp);
        return NULL;
    }
    FUNC0(*fsize >= 0);

    if (FUNC6(fp, 0, SEEK_SET) == -1) {
        FUNC3(stderr, "XML file %s broken (seek error)\n", filename);
        FUNC1(fp);
        return NULL;
    }

    data = (char *)FUNC8((size_t) * fsize);

    if (FUNC4(data, (size_t)*fsize, 1, fp) != 1) {
        FUNC3(stderr, "XML file %s broken (read error)\n", filename);
        FUNC5(data);
        FUNC1(fp);
        return NULL;
    }

    FUNC1(fp);

    return data;
}