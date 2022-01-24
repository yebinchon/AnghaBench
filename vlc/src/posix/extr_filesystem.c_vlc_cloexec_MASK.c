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
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int FUNC0 (int,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static inline void FUNC1(int fd)
{
    FUNC0(fd, F_SETFD, FD_CLOEXEC | FUNC0(fd, F_GETFD));
}