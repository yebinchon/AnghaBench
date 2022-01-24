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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  ERROR_fread ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 size_t FUNC5 (void*,int,size_t const,int /*<<< orphan*/ * const) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC8(const char* fileName, void* buffer, size_t bufferSize)
{
    size_t const fileSize = FUNC6(fileName);
    FUNC0(fileSize <= bufferSize, "File too large!");

    FILE* const inFile = FUNC3(fileName, "rb");
    size_t const readSize = FUNC5(buffer, 1, fileSize, inFile);
    if (readSize != (size_t)fileSize) {
        FUNC4(stderr, "fread: %s : %s \n", fileName, FUNC7(errno));
        FUNC1(ERROR_fread);
    }
    FUNC2(inFile);  /* can't fail, read only */
    return fileSize;
}