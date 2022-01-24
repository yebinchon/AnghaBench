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
 int /*<<< orphan*/  ERROR_fwrite ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (void const*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static size_t FUNC3(const void* buffer, size_t sizeToWrite, FILE* file)
{
    size_t const writtenSize = FUNC1(buffer, 1, sizeToWrite, file);
    if (writtenSize == sizeToWrite) return sizeToWrite;   /* good */
    /* error */
    FUNC2("fwrite");
    FUNC0(ERROR_fwrite);
}