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
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 

__attribute__((used)) static BOOL FUNC1(const char *path)
{
    return (FUNC0(path[0]) && path[1] == ':' && path[2] == '\\' && !path[3]);
}