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
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 

FILE * FUNC8(const char filename[])
{
    FILE *fp;
    char *data;

    if (!(fp = FUNC1(filename, "a+b"))) {
        FUNC2(stderr, "Original JP2 %s not found\n", filename);
        return NULL;
    }
    /* Check resource is a JP family file. */
    if (FUNC5(fp, 0, SEEK_SET) == -1) {
        FUNC0(fp);
        FUNC2(stderr, "Original JP2 %s broken (fseek error)\n", filename);
        return NULL;
    }

    data = (char *)FUNC6(12);  /* size of header */
    if (FUNC3(data, 12, 1, fp) != 1) {
        FUNC4(data);
        FUNC0(fp);
        FUNC2(stderr, "Original JP2 %s broken (read error)\n", filename);
        return NULL;
    }

    if (*data || *(data + 1) || *(data + 2) ||
            *(data + 3) != 12 || FUNC7(data + 4, "jP  \r\n\x87\n", 8)) {
        FUNC4(data);
        FUNC0(fp);
        FUNC2(stderr, "No JPEG 2000 Signature box in target %s\n", filename);
        return NULL;
    }
    FUNC4(data);
    return fp;
}