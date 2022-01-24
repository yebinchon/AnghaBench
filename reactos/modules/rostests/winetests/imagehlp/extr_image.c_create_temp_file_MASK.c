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
typedef  int /*<<< orphan*/  temp_path ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,char*) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 

__attribute__((used)) static HANDLE FUNC3(char *temp_file)
{
    HANDLE file = INVALID_HANDLE_VALUE;
    char temp_path[MAX_PATH];

    if (FUNC2(sizeof(temp_path), temp_path))
    {
        if (FUNC1(temp_path, "img", 0, temp_file))
            file = FUNC0(temp_file, GENERIC_READ | GENERIC_WRITE, 0, NULL,
             CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    }
    return file;
}