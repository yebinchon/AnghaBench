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
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const* const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static void FUNC7(const void* buf, size_t size, const char* const path)
{
    /* write data out to file */
    const BYTE* ip = (const BYTE*)buf;
    FILE* out;
    if (path) {
        out = FUNC3(path, "wb");
    } else {
        out = stdout;
    }
    if (!out) {
        FUNC4(stderr, "Failed to open file at %s: ", path);
        FUNC6(NULL);
        FUNC0(1);
    }

    {   size_t fsize = size;
        size_t written = 0;
        while (written < fsize) {
            written += FUNC5(ip + written, 1, fsize - written, out);
            if (FUNC2(out)) {
                FUNC4(stderr, "Failed to write to file at %s: ", path);
                FUNC6(NULL);
                FUNC0(1);
            }
        }
    }

    if (path) {
        FUNC1(out);
    }
}