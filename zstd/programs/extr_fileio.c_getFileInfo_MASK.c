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
typedef  int /*<<< orphan*/  fileInfo_t ;
typedef  int /*<<< orphan*/  InfoError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  info_file_error ; 

__attribute__((used)) static InfoError
FUNC3(fileInfo_t* info, const char* srcFileName)
{
    FUNC0(!FUNC1(srcFileName),
            info_file_error, "Error : %s is not a file", srcFileName);
    return FUNC2(info, srcFileName);
}