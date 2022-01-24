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
 scalar_t__ EEXIST ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ errno ; 
 int FUNC2 (char const*,int,int) ; 

int FUNC3 (const char *dst, const char *src, int mode)
{
    int fdi, fdo, status;

    if ((fdi = FUNC2 (src, O_RDONLY | O_BINARY, 0)) < 0)
        return fdi;

    fdo = FUNC2 (dst, O_WRONLY | O_CREAT | O_EXCL | O_BINARY, mode);
    if (fdo < 0 && errno == EEXIST) {
        FUNC0 (fdi);
        return 0;
    } else if (fdo < 0){
        FUNC0 (fdi);
        return -1;
    }

    status = FUNC1 (fdi, fdo);
    if (FUNC0 (fdo) != 0)
        return -1;

    return status;
}