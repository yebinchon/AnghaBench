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
typedef  int /*<<< orphan*/  err ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int FUNC0 (int,int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1 (int fd, int err)
{
    return FUNC0(fd, &err, sizeof (err), MSG_NOSIGNAL) == sizeof (err) ? 0 : -1;
}