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
typedef  int boolean_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*) ; 
 size_t FUNC1 (char const*) ; 
 char const* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static boolean_t
FUNC3(const char *path1, const char *path2)
{
	return (FUNC0(path1, path2) == 0 || FUNC0(path1, "/") == 0 ||
	    (FUNC2(path2, path1) == path2 && path2[FUNC1(path1)] == '/'));
}