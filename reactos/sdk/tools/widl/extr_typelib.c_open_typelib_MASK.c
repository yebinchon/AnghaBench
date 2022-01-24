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

/* Variables and functions */
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,int) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const char *name)
{
    char *file_name;
    int fd;

    file_name = FUNC2(name, NULL);
    if(!file_name)
        return FUNC1(name, O_RDONLY | O_BINARY );

    fd = FUNC1(file_name, O_RDONLY | O_BINARY );
    FUNC0(file_name);
    return fd;
}