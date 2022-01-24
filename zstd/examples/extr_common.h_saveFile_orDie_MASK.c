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
 int /*<<< orphan*/  ERROR_fclose ; 
 int /*<<< orphan*/  ERROR_fwrite ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 size_t FUNC4 (void const*,int,size_t,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const char* fileName, const void* buff, size_t buffSize)
{
    FILE* const oFile = FUNC2(fileName, "wb");
    size_t const wSize = FUNC4(buff, 1, buffSize, oFile);
    if (wSize != (size_t)buffSize) {
        FUNC3(stderr, "fwrite: %s : %s \n", fileName, FUNC6(errno));
        FUNC0(ERROR_fwrite);
    }
    if (FUNC1(oFile)) {
        FUNC5(fileName);
        FUNC0(ERROR_fclose);
    }
}