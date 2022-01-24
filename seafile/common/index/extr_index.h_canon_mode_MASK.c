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
 unsigned int S_IFDIR ; 
 unsigned int S_IFGITLINK ; 
 unsigned int S_IFLNK ; 
 unsigned int S_IFREG ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 

__attribute__((used)) static inline unsigned int FUNC4(unsigned int mode)
{
    if (FUNC2(mode))
        return S_IFREG | FUNC3(mode);
    if (FUNC1(mode))
        return S_IFLNK;
    if (FUNC0(mode))
        return S_IFDIR;
    return S_IFGITLINK;
}