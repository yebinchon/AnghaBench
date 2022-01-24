#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * fh; } ;
typedef  int /*<<< orphan*/  PAVIFILE ;
typedef  TYPE_1__ COMMON_AVI_HEADERS ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OF_SHARE_DENY_WRITE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  testfilename ; 

__attribute__((used)) static void FUNC9(void)
{
    COMMON_AVI_HEADERS cah;
    char filename[MAX_PATH];
    PAVIFILE pFile;
    int res;

    FUNC2(MAX_PATH, filename);
    FUNC7(filename+FUNC8(filename), testfilename);

    /* Make sure only AVI files with the proper headers will be loaded */
    FUNC4(&cah);
    cah.fh[3] = FUNC5('A', 'V', 'i', ' ');

    FUNC3(&cah, filename);
    res = FUNC0(&pFile, filename, OF_SHARE_DENY_WRITE, 0L);
    FUNC6(res != 0, "Able to open file: error=%u\n", res);

    FUNC6(FUNC1(filename) !=0, "Deleting file %s failed\n", filename);
}